require "net/ftp"

class FtpService
  FTP_CONFIG = YAML.load_file("#{Rails.root}/config/ftp_service.yml")[Rails.env]

  def initialize(current_user, is_chairman)
    # TODO: remove member_type check here
    @is_chairman = is_chairman
    @user = current_user
    @ftp = Net::FTP.new

    set_ftp_credentials(@user)
  end

  def file_exists?(filename)
    begin
      @ftp.size(filename)
    rescue Exception
      return false
    end
    return true
  end

  def connect
    @ftp.passive = true
    # TODO: update service url to yml lookup
    @ftp.connect(FTP_CONFIG["ftp_service_url"])
    
    @ftp.login(@ftp_user, @ftp_password)
  end

  def delete(filename)
    @ftp.delete(filename)
  end

  def get_data(filename, directory)
    # TODO: remove change directory prefix "employee"
    change_dir = (@user.admin? or @is_chairman) ? "employee/#{ directory }" : directory
    @ftp.chdir(change_dir)
    
    raw = StringIO.new('')
    @ftp.retrbinary("RETR " + filename, 4096) { |data| raw << data }
    raw.rewind

    raw.read
  end

  # 
  # code to copy a single file, FTP doesn't support copy, so doing get / put
  def copy(filename, from, to)
    cwd = @ftp.pwd
    @ftp.chdir(from)
    raw = StringIO.new('')
    @ftp.retrbinary("RETR " + filename, 4096) { |data| raw << data }
    raw.rewind

    @ftp.chdir(cwd)
    @ftp.chdir(to)
    @ftp.storbinary("STOR " + filename, StringIO.new(raw.read), Net::FTP::DEFAULT_BLOCKSIZE)
    @ftp.chdir(cwd)
  end

  def upload(file, directory)
    # TODO: remove change directory prefix "employee"
    change_dir = (@user.admin? or @is_chairman) ? "employee/#{ directory }" : directory
    @ftp.chdir(change_dir)

    existence = file_exists?(file.original_filename)
    @ftp.delete(file.original_filename) if existence

    @ftp.storbinary("STOR " + file.original_filename, StringIO.new(file.read), 
      Net::FTP::DEFAULT_BLOCKSIZE)
    return existence
  end

  def close
    @ftp.close
  end

  def verify_hsp(password)
    return ( not password.blank? and password == FTP_CONFIG["exam_hsp"] )
  end

  private

  def set_ftp_credentials(user)
    user_role = ( user.admin? or @is_chairman ) ? "manager" : user.user_role_name

    @ftp_user = FTP_CONFIG[user_role]["ftp_user"]
    @ftp_password = FTP_CONFIG[user_role]["ftp_password"]
  end
end
