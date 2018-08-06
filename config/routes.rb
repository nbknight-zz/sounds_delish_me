Rails.application.routes.draw do
  resources :recipes
  resources :songs
  resources :categories

  root 'categories#index'

  get 'tag_recipes' => 'recipes#tag_recipes'
  get 'categorical' => 'categories#recipes_by_category'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
