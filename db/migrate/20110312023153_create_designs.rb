class CreateDesigns < ActiveRecord::Migration
  def self.up
    create_table :designs do |t|
      t.integer :user_id
      t.integer :project_id      
      t.text :description
      t.boolean :tos

      t.timestamps
    end
  end

  def self.down
    drop_table :designs
  end
end
