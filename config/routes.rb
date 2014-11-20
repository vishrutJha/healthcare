Rails.application.routes.draw do
  resources :drugs

  resources :diagnoses

  resources :prescriptions

  resources :systemic_exams

  resources :patients

  root :to => 'home#index'
end
