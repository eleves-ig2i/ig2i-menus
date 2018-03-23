# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#dashboard'
  devise_for :students
  resources :menus
  resources :meals
end
