class AddCreativeToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :creative1_file_name,    :string
    add_column :projects, :creative1_content_type, :string
    add_column :projects, :creative1_file_size,    :integer
    add_column :projects, :creative1_updated_at,   :datetime
    add_column :projects, :creative2_file_name,    :string
    add_column :projects, :creative2_content_type, :string
    add_column :projects, :creative2_file_size,    :integer
    add_column :projects, :creative2_updated_at,   :datetime    
    add_column :projects, :creative3_file_name,    :string
    add_column :projects, :creative3_content_type, :string
    add_column :projects, :creative3_file_size,    :integer
    add_column :projects, :creative3_updated_at,   :datetime
  end

  def self.down
    remove_column :projects, :creative1_file_name
    remove_column :projects, :creative1_content_type
    remove_column :projects, :creative1_file_size
    remove_column :projects, :creative1_updated_at
    remove_column :projects, :creative2_file_name
    remove_column :projects, :creative2_content_type
    remove_column :projects, :creative2_file_size
    remove_column :projects, :creative2_updated_at    
    remove_column :projects, :creative3_file_name
    remove_column :projects, :creative3_content_type
    remove_column :projects, :creative3_file_size
    remove_column :projects, :creative3_updated_at    
  end
end
