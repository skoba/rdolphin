Rails.application.routes.draw do
  get 'prescriptions/index'
  get 'prescriptions/show'

  resources :people, only: [:show, :index] do
    get 'vital_signs/show'
  end

  get 'ehrs/index'
  get 'ehrs/show'

  devise_for :users
  resources :test_module
  resources :open_ehr_ehr_cluster_mml_name_v1
  resources :open_ehr_ehr_observation_mml_test_module_v1
  resources :sandbox

  root to: 'people#index'
end
