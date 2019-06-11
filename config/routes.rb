Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :match_servers




  get '/hero/create', to: 'hero#create_hero' 


end
