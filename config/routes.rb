Rails.application.routes.draw do
  resources :materials
  get '/test', to: "diys#get_diys"
  resources :diys
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
