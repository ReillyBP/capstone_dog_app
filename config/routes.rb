Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
      }
  root to: "dogs#index"
  get "/home", to: "dogs#index"
  resources :dogs
  resources :breeds
  resources :breeders
  post "/reviews/:id/upvote", to: "reviews#upvote"
  post "/reviews/:id/downvote", to: "reviews#downvote"
  resources :reviews
end
