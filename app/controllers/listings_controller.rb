class ListingsController < ApplicationController
  
  def index
    @listings = Listing.all
    # @current_user_listings = current_user.listings
  end

  def show
    @listing=Listing.find(params[:id])
  end

  def new
    @listing=Listing.new
  end

  def create
    @listing=Listing.new(params[:listing])

    if @listing.save
      u=User.find(session[:user_id])
      u.listings << @listing
      redirect_to listings_path
    else
      render "new"
    end
  end

  def edit
    @listing=Listing.find(params[:id])
  end

  def update
    @listing=Listing.find(params[:id])

    if @listing.update_attributes(params[:listing])
      redirect_to listing_path(@listing.id)
    else
      render "edit"
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy

    redirect_to listings_path
  end
  
end
