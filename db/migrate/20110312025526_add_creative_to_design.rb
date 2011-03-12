class AddCreativeToDesign < ActiveRecord::Migration
  def self.up
    add_column :designs, :thumbnail_file_name,    :string
    add_column :designs, :thumbnail_content_type, :string
    add_column :designs, :thumbnail_file_size,    :integer
    add_column :designs, :thumbnail_updated_at,   :datetime
    add_column :designs, :zip_package_file_name,    :string
    add_column :designs, :zip_package_content_type, :string
    add_column :designs, :zip_package_file_size,    :integer
    add_column :designs, :zip_package_updated_at,   :datetime    
  end

  def self.down
    remove_column :designs, :thumbnail_file_name
    remove_column :designs, :thumbnail_content_type
    remove_column :designs, :thumbnail_file_size
    remove_column :designs, :thumbnail_updated_at    
    remove_column :designs, :zip_package_file_name
    remove_column :designs, :zip_package_content_type
    remove_column :designs, :zip_package_file_size
    remove_column :designs, :zip_package_updated_at    
  end
end
