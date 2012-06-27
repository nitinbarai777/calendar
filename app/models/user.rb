class User < ActiveRecord::Base

acts_as_authentic

   after_create do |user|
      user.is_admin = user.is_admin ? user.is_admin : 3
      user.save
   end
  
end
