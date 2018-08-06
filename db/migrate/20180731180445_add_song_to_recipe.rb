class AddSongToRecipe < ActiveRecord::Migration[5.2]
  def change
  	add_column :recipes, :song, :text
  end
end
