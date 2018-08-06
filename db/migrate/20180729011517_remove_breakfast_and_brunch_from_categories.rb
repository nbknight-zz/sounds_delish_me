class RemoveBreakfastAndBrunchFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :breakfast_and_brunch, :string
  end
end
