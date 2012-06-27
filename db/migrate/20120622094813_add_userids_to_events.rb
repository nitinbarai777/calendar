class AddUseridsToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :user_id, :integer
    add_column :events, :patient_id, :integer
  end

  def self.down
    remove_column :events, :patient_id
    remove_column :events, :user_id
  end
end
