Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'pages#home'

  resources :profiles, except: [:index]

  get "/new_mentee", to: "profiles#new_mentee"

  get "/mentors", to: "profiles#index"

  patch "/change_status", to: "connections#change_status"
  patch "/mark", to: "milestones#mark"

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
