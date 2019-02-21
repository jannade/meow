Rails.application.routes.draw do
  get 'profiles/index'
  get 'profiles/new'
  get 'profiles/create'
  get 'profiles/show'
  get 'profiles/update'
  get 'profiles/edit'
  get 'profiles/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
