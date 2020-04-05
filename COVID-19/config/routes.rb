Rails.application.routes.draw do
  resources :pharmcies_stores
  resources :hospitals
  get 'pages/home'
  get 'pages/about'
  get 'pages/prevention'
  get 'pages/statistics'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
