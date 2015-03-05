require 'draw_erd'

Rails.application.routes.draw do
  resources :mml_patients, only: [:show, :index]
  resources :mml_lab_tests, only: [:show, :index]
  resources :compositions #, only: [:show, :index]
  mount DrawErd::Engine, at: 'rails/draw/erd'

  root to: 'mml_patients#index'  
end
