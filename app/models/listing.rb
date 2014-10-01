class Listing < ActiveRecord::Base
  attr_accessible :budget_type, :category_id, :location, :name
  belongs_to :users
  belongs_to :categories
  
end
