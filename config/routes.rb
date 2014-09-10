Rails.application.routes.draw do
  resources :mml_patients, only: [:show, :index]
  resources :mml_lab_tests, only: [:show, :index]
  
  root to: 'mml_patients#index'  
end
