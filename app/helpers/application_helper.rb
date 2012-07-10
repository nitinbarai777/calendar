module ApplicationHelper

   def get_menu_name(id)
      @mainmenu = Mainmenu.find(id)
      @mainmenu.name
   end

   def get_menu_url(id)
      @menuurl = Page.find(:first, :conditions => ['menu_id =?', id])
   end
   
   def date_formate(date)
		date.strftime("%d.%-m.%Y")
	end
   
end
