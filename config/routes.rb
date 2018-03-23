Rails.application.routes.draw do
  get 'groupies/create'
  get 'groupies/destroy'
  get 'challenges/index'
  get 'challenges/show'
  get 'challenges/new'
  get 'challenges/create'
  get 'challenges/edit'
  get 'challenges/update'
  get 'challenges/destroy'
  get 'groups/index'
  get 'groups/show'
  get 'groups/new'
  get 'groups/create'
  get 'groups/edit'
  get 'groups/update'
  get 'groups/destroy'
  get 'friendships/create'
  get 'friendships/destroy'
  get 'users/index'
  get 'users/show'
  devise_for :users
	root "home#index" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
