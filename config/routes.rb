Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :families, only: [:index, :show, :new, :create, :edit, :update] do
    resources :publications
    resources :profiles
  end
end
