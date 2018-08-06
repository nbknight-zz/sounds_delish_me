class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :apps_and_snacks
      t.string :breakfast_and_brunch
      t.string :dinner
      t.string :desserts
      t.string :drinks

      t.timestamps
    end
  end
end
