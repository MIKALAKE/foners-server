Rails.application.routes.draw do
  namespace :v1 do
    mount_devise_token_auth_for "User", at: "auth"
    resources :constructors, only: [:index, :show, :create, :update, :destroy]
    resources :sponsors, only: [:index, :show, :create, :update, :destroy]
    resources :drivers, only: [:index, :show, :create, :update, :destroy]
    resources :events, only: [:index, :show, :create, :update, :destroy]
  end
end
