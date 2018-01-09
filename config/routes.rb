Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "tweets#index"
  get "tweets", to: "tweets#index"
  get "tweets/new", to: "tweets#new"
  get "tweets", to: "tweets#show"
  post "tweets", to: "tweets#create"
  delete "tweets/:id/edit", to: "beans#edit", as: :edit_bean
  patch "beans/:id", to: "beans#update"
end