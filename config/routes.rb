# frozen_string_literal: true

Rails.application.routes.draw do
  # graphqlのエンドポイント
  post '/graphql', to: 'graphql#execute'

  # grapiql for development
  if Rails.env.development? || Rails.env.production?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :hello, only: [:index]
end
