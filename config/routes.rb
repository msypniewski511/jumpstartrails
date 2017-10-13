Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/show/:id', to: 'posts#show'
  get 'portfolio', to: 'pages#portfolio'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'pages#index'

  get 'pages/index'
  get 'pages/about'
  get 'pages', to: 'pages#index'

  resources :pages
  %w[about contact cv index rout].each do |page|
  	get page, controller: 'pages', action: page
  end
  get 'tabele-css', to: 'pages#table'
  get 'main-layout', to: 'pages#main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
