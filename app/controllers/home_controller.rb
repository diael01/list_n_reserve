class HomeController < ApplicationController
   def index
     @users = User.all
     @tennis_facilities = TennisFacility.all
   end
end
