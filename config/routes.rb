Rails.application.routes.draw do
  get '/', to:'top#index' #http method and URL
  get '/users/:id', to: 'users#show', as: "user"
  # root "articles#index"
  # get "/articles", to: "articles#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
