Rails.application.routes.draw do
  devise_for :admins
  resources :stores
  resources :hospitals
  resources :statistics
  get 'pages/home'
  get 'pages/about'
  get 'pages/prevention'
  root 'pages#home'
  get "bootstrap", to: "pages#bootstrap"
  get "bootstrap", to: "stores#bootstrap"
  get "bootstrap", to: "hospitals#bootstrap"

  get '/search' => 'pages#search', :as => 'search_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
