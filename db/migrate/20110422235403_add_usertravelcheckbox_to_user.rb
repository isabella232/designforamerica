class AddUsertravelcheckboxToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :willing_to_meet_in_person, :boolean, :default => false
  end

  def self.down
    remove_column :users, :willing_to_meet_in_person
  end
end
