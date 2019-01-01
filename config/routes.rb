Rails.application.routes.draw do
  root to: 'kiites#index'
  resources :kiites
  get 'kiites/sokka', to: 'kiites#sokka'
end
