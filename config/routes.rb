Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  get '/blogs', to: 'blogs#index'
  resources :blogs, only:[:new, :create, :show]
end
