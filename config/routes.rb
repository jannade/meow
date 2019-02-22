Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :profiles, except: [:index]
  get "/mentors", to: "profiles#index"

  resources :connections do
    resources :goals do
      resources :milestones
    end
  end

  resources :messages, except: [:edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
