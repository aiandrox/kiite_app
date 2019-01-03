Rails.application.routes.draw do
  root to: 'kiites#index'
  get 'kiites/sokka'
  resources :kiites do
    resources :comments, only: %i[create update destroy] 
  end
end
