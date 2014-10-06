class PagesController < ApplicationController
  
    def index
     # @current_user=User.find(session[:user_id])
     # @prolisting = Listing.find(params[:id])
     # @listings = Listing.all
    end

    def favs
      @user = session[:user_id]
    end
    
end

