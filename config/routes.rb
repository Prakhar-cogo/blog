Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/articles", to:"articles#list"
  get "/articles/:id", to:"articles#singleList"
  post "articles", to:"articles#createList"
  delete "/articles", to:"articles#deleteList"
end
