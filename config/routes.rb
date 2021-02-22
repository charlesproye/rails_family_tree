Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :families, only: [:index, :show, :new, :create, :edit, :update] do
    resources :publications do
      resources :reviews
    end
    resources :profiles
  end
end
