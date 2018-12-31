Rails.application.routes.draw do
  root to: 'kiites#index'
  resources :kiites, only: %i[index new create edit update destroy]
end
