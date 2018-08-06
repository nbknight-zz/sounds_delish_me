class AddKeywordToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :keyword, :string
  end
end
