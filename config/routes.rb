Rails.application.routes.draw do
  namespace :v1 do
    resources :constructors, only: [:index, :show]
    resources :drivers, only: [:index, :show, :create, :update, :destroy]
    resources :events, only: [:index, :show]
    resources :users, only: [:index, :show]
    resources :sponsors, only: [:index, :show]
  end
end
