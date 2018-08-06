class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.text :ingredients
      t.text :directions
      t.string :image

      t.timestamps
    end
  end
end
