Rails.application.routes.draw do
  resources :users, :captions
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/news' => 'welcome#news'
  root 'welcome#index'
end
