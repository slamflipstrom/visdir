class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.string :budget_type
      t.string :location
      t.integer :category_id

      t.timestamps
    end
  end
end
