class MenuIdColumnToMainmenuId < ActiveRecord::Migration
  def self.up
   rename_column :pages, :menu_id, :mainmenu_id
  end

  def self.down
   rename_column :pages, :mainmenu_id, :menu_id
  end
end
