Rails.application.routes.draw do
  devise_for :accounts
  as :account do
    get "login" => "devise/sessions#new"
    post "login" => "devise/sessions#create"
    delete "signout" => "devise/sessions#destroy"
    get "signup" => "devise/registrations#new"
  end
  resources :products
  root 'home#index'
  resources :admin
  resources :account
  get "management" => "admin#user_management"
  get "productmanagement" => "admin#product_management"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
