Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  devise_for :users
	root 'events#index'
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
