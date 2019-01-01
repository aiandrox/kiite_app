Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/update'
  get 'comments/destroy'
  root to: 'kiites#index'
  resources :kiites
  get 'kiites/sokka', to: 'kiites#sokka'
end
