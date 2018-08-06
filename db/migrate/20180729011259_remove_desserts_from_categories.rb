class RemoveDessertsFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :desserts, :string
  end
end
