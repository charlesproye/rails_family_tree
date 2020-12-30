Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :families, only: [:index, :show] do
    resources :publications
    resources :profiles
  end
end
