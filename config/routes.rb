Rails.application.routes.draw do
  resources :portfolios
  root to: 'pages#interiors'
  get 'about' => 'pages#about'
  get 'services' => 'pages#services'
  get 'contact', to:'pages#contact'
  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
