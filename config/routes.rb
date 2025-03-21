Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/welcome' => "welcome#new"
end
