Rails.application.routes.draw do
  resources :hotels do
    resources :fotos, only: [:create, :destroy]
  end
  get '/hotels/:id/add', to: 'hotels#add', as: 'add_fotos'
  get '/hotels/:id/remove', to: 'hotels#remove', as: 'remove_fotos'
  root to: 'hotels#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
