class AddUsercheckboxesToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :city_staff, :boolean, :default => false
    add_column :users, :designer, :boolean, :default => false
  end

  def self.down
    remove_column :users, :designer
    remove_column :users, :city_staff
  end
end
