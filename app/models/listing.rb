class Listing < ActiveRecord::Base
  attr_accessible :budget_type, :category_id, :location, :name, :user_id
  belongs_to :users
  belongs_to :categories
  
end
