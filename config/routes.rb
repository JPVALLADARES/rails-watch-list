Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/list', to: 'list#index', as: :list
  # get '/list', to: 'list#show', as: :list
  # get '/list/new', to: 'list#new', as: :list
  # post '/list', to: 'list#create'
  root to: "lists#index"
  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create destroy]
  end
end
