# frozen_string_literal: true

Rails.application.routes.draw do  
  get 'favorites/update'
  mount Converter::Currency => '/api'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :brands
  resources :models
  resources :dealers
  resources :cars
  root 'cars#index'  
end
