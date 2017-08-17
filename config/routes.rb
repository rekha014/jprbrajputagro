Rails.application.routes.draw do
  #get 'product/index'

  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  root "home#index"
  get '/about', to: 'home#about', as: 'about'

  get '/products', to: 'product#index', as: 'products'
  get 'contact', to: 'contact#new', as: 'contact'
  post 'contact', to: 'contact#create_mail'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
