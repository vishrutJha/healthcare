Rails.application.routes.draw do
  resources :stored_files

  resources :diagnoses do
    resources :stored_files
  end

  resources :prescriptions

  resources :drugs

  resources :systemic_exams

  resources :patients

  root :to => 'home#index'
end
