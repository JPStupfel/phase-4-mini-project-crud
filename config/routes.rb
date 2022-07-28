Rails.application.routes.draw do
  resources :spices, only: [:update, :index, :destroy, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
