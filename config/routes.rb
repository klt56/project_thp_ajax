Rails.application.routes.draw do
 
  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users
  root "static_pages#index" 
 
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'

 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "books/index"
  resources :books, only: [:create, :index]
  # Defines the root path route ("/")
  # root "articles#index"
end
end