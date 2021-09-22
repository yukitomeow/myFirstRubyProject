Rails.application.routes.draw do
  resources :weight_history2s
  resources :weight_histories
  get '/', to:'top#index' #http method and URL
  get 'users', to: 'users#index', as: "users"
  get '/users/:id', to: 'users#show', as: "user" 
  # root "articles#index"
  # get "/articles", to: "articles#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
