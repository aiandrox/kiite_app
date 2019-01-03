Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/update'
  get 'comments/destroy'
  root to: 'kiites#index'
  get 'kiites/sokka'
  resources :kiites
end
