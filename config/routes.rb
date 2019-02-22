Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'pages#home'

  resources :profiles, except: [:index]
  get "/mentors", to: "profiles#index"

  resources :connections do
    resources :goals do
      resources :milestones
    end
  end

  resources :messages, except: [:edit, :update]

end
