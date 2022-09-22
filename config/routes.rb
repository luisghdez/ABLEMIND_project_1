Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :suppliers, only: %i[index show new create]
  resources :products, only: %i[new create delete]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
