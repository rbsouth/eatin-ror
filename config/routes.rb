Rails.application.routes.draw do
  devise_for :users
 	resources :users, only: [:index, :show]
 	resources :groups
 	resources :friendships, only: [:create, :destroy, :index]
 	resources :groupies, only: [:create, :update, :destroy]
 	resources :invites, only: [:create, :destroy]
 	resources :challenges
	root "groups#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end