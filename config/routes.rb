Rdolphin::Application.routes.draw do
  get "home/index"
  devise_for :users
  resources :test_module
  resources :open_ehr_ehr_cluster_mml_name_v1
  resources :open_ehr_ehr_observation_mml_test_module_v1
  resources :sandbox

  root to: 'home#index'
end
