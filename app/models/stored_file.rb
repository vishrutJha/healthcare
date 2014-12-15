class StoredFile < ActiveRecord::Base
  belongs_to :storage, polymorphic: true

  def stored_file_label
    "#{ storage_type } - #{ name }"
  end

  def store_type=(s_type)
    super(s_type.to_s.classify.constantize.base_class.to_s)
  end
end
