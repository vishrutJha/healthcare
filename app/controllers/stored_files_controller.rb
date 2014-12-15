class StoredFilesController < ApplicationController
  before_action :set_stored_file, only: [:show, :edit, :update, :destroy]

  # POST /stored_files
  # POST /stored_files.json
  def create
    @file_path = params[:file]
    if params[:stored_file].blank?
      @stored_file = StoredFile.new(name: @file_path.original_filename, path: @file_path.original_filename)
    else
      @stored_file = StoredFile.new(stored_file_params)
    end
    upload_ftp_file

    respond_to do |format|
      if @stored_file.save
        format.html { redirect_to @stored_file, notice: 'Stored file was successfully created.' }
        content = {}
        content["storage"] = @stored_file
        content["replace"] = @ftp_data
        render json: content
      else
        format.html { render :new }
        format.json { render json: @stored_file.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stored_file
      @stored_file = StoredFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stored_file_params
      params.require(:stored_file).permit(:path, :name, :storage_type, :storage_id)
    end

    def upload_ftp_file
      @ftp_service = FtpService.new(current_user)
      @ftp_service.connect
      
      @ftp_data = @ftp_service.upload(@file_path, params[:upload_type])
      @ftp_service.close
    end
end
