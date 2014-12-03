Rails.application.routes.draw do
  resources :diagnoses

  resources :prescriptions

  resources :drugs

  resources :systemic_exams

  resources :patients

  root :to => 'home#index'
end
