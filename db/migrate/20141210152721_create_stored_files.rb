class CreateStoredFiles < ActiveRecord::Migration
  def change
    create_table :stored_files do |t|
      t.string :path
      t.string :name
      t.string :storage_type
      t.integer :storage_id

      t.timestamps
    end
  end
end
