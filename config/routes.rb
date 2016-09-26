Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :mml_patients
  resources :compositions
  resources :mml_lab_tests
end
