Rails.application.routes.draw do
  devise_for :users
  root 'splash#index'
  resources :categories, except: [:update] do
    resources :activities
  end
  resources :activities, only: %i[new create]
end
