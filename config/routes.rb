Rails.application.routes.draw do
  get 'favorite_companies/create'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
    # , sessions: 'users/sessions'
  }
  root to: "pages#home"

  resources :favorite_companies, only: %i[index create]
  resources :suppliers, only: %i[index show new create]
  resources :maquilas, only: %i[new create]

  resources :posts, only: %i[new create delete] do
    resources :likes, only: %i[create delete]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
