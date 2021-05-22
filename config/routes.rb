Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :postings, except: :destroy do
    resources :applications, only: [:new, :create]
  end
  resources :applications, only: [] do
    member do
      get "approve"
    end
  end
end
