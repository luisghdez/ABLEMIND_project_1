Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
    # , sessions: 'users/sessions'
  }
  root to: "pages#home"
  get 'maquiladashboard', to: 'pages#maquila_dashboard'
  get 'supplierdashboard', to: 'pages#supplier_dashboard'

  resources :favorite_companies, only: %i[index create]
  resources :suppliers, only: %i[index show new create]
  resources :maquilas, only: %i[new create]

  resources :posts, only: %i[show new create delete] do
    resources :likes, only: %i[create delete]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
