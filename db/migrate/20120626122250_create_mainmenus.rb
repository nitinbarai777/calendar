class CreateMainmenus < ActiveRecord::Migration
  def self.up
    create_table :mainmenus do |t|
      t.string :name
      t.string :title
      t.integer :parent_id

      t.timestamps
    end
  end

  def self.down
    drop_table :mainmenus
  end
end
