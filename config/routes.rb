Rails.application.routes.draw do
  resources :hotels
  #get '/hotels/:id/add', to: 'galleries#add', as: 'add_images'
  # get '/hotels/:id/remove', to: 'galleries#remove', as: 'remove_images'
  root to: 'hotels#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
