class CategoriesController < ApplicationController  
  
  def index
    @current_user=User.find(session[:user_id])
    @categories = @current_user.categories
  end

  def show
    @category=Category.find(params[:id])
  end

  def new
    @category=Category.new
  end

  def create
    @category=Category.new(params[:category])

    if @category.save
      u=User.find(session[:user_id])
      u.categories << @category
      redirect_to categories_path
    else
      render "new"
    end
  end

  def edit
    @category=Category.find(params[:id])
  end

  def update
    @category=Category.find(params[:id])

    if @category.update_attributes(params[:category])
      redirect_to category_path(@category.id)
    else
      render "edit"
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to categories_path
  end
  
end
