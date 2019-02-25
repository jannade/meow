Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'pages#home'

  resources :profiles, except: [:index]
  get "/mentors", to: "profiles#index"

  patch "/change_status", to: "connections#change_status"

  resources :connections do
    resources :goals do
      resources :milestones
    end
  end


  resources :messages, except: [:edit, :update]

  resources :connections do
    resources :messages, only: [:create]
  end
end
