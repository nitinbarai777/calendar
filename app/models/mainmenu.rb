class Mainmenu < ActiveRecord::Base

	has_many :pages

    after_create do |mainmenu|
      mainmenu.parent_id = mainmenu.parent_id ? mainmenu.parent_id : 0
      mainmenu.save
   end
   
end
