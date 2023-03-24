Rails.application.routes.draw do
  resources :docs
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 



  # Defines the root path after authentication
  authenticated :user do
    root "docs#index", as: 'authenticated_root'
  end
  # Defines the root path before authentication
  root 'welcome#index'
end
