Rails.application.routes.draw do
  namespace :v1 do
    resources :constructors, only: [:index, :show, :create, :update, :destroy]
    resources :drivers, only: [:index, :show, :create, :update, :destroy]
    resources :events, only: [:index, :show, :create, :update, :destroy]
    resources :users, only: [:index, :show, :create, :update, :destroy]
    resources :sponsors, only: [:index, :show, :create, :update, :destroy]
  end
end
