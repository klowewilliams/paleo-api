Rails.application.routes.draw do
  
  get "/restaurants" => 'restaurants#index'
  get "/restaurants/:id" => 'restaurants#show'
  post "/restaurants" => 'restaurants#create'
  patch "/restaurants/:id" => 'restaurants#update'
  delete "/restaurants/:id" => 'restaurants#destroy'

end
