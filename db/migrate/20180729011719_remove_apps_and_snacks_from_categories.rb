class RemoveAppsAndSnacksFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :apps_and_snacks, :string
  end
end
