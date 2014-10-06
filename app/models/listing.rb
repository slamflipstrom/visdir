class Listing < ActiveRecord::Base
  attr_accessible :budget_type, :category_id, :location, :name, :user_id, :photo, :categories_attributes
  belongs_to :users
  belongs_to :categories
  
  accepts_nested_attributes_for :categories, :allow_destroy => true, :reject_if => :category_is_blank
  
  def category_is_blank(attrs)
    if attrs['name'].blank?
      true
    else
      false
    end 
  end

end
