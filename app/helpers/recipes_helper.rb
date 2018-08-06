module RecipesHelper

	def get_tagged(recipes)
		keyword_arr = @recipe.keyword.split

        keyword_arr.each do |word|
	      	if word[0] == "#"
	        	if Tag.pluck(:phrase).include?(word)
	          		tag = Tag.find_by(phrase: word)
	        	else
	          		tag = Tag.create(phrase: word)
	        	end
	        	recipe_tag = RecipeTag.create(recipe_id: @recipe.id, tag_id: tag.id)
	        	# keyword_arr[index] = "<a href='/tag_recipes?id=#{tag.id}'>#{word}</a>"
	       	end
     	end
      	recipes.keyword = keyword_arr.join(" ")
      	return recipes
    end

end
