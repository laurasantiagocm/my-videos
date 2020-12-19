Rails.application.routes.draw do
  root to: 'home#index'
  resources :categories
  resources :comments
  resources :videos

  post '/create_comment', to: 'videos#create_comment'
end
