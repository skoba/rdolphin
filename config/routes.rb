Rails.application.routes.draw do
  resources :compositions
  resources :mml_patients
  resources :mml_lab_tests
end
