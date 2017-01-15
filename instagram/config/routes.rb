Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root "pictures#index"
  resources :pictures, shallow: true do
    resources :comments
      resources :likes
        resources :tags
  end
end
