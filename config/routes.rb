Rails.application.routes.draw do
  
  get "/restaurants" => 'restaurants#index'
  get "/restaurants/:id" => 'restaurants#show'

end
