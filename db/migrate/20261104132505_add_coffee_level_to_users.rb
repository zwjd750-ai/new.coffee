class AddCoffeeLevelToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :coffee_level, :integer
  end
end
