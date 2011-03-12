class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.integer :user_id
      t.string :name
      t.string :organization
      t.string :cause
      t.string :location
      t.text :description
      t.boolean :tos
      t.string :size_require
      t.string :format_require
      t.text :target_audience
      t.text :three_things
      t.text :colors_want
      t.text :colors_donotwant
      t.text :how_use
      t.text :content_on_design
      t.boolean :published, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
