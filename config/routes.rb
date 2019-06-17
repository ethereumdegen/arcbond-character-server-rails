Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  post '/hero/create', to: 'hero#create_hero'
  post '/hero/save', to: 'hero#save_hero'

  post '/hero/load', to: 'hero#load_hero', as: :load_hero

  root 'hero#index'

end
