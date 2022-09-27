Rails.application.routes.draw do
  get 'favorite_suppliers/create'
  devise_for :users
  root to: "pages#home"

  resources :suppliers, only: %i[index show new create] do
    resources :favorite_suppliers, only: %i[index create]
  end
  resources :products, only: %i[new create delete] do
    resources :likes, only: %i[create delete]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
