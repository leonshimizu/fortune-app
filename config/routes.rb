Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/fortune", controller: "my_examples", action: "random_fortune"
  get "/number", controller: "my_examples", action: "random_number"
  get "/beer", controller: "my_examples", action: "bottles_of_beer"
end
