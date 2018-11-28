Rails.application.routes.draw do
  get '/quiz', to: 'quiz#show'
  get '/quiz_results', to: 'quiz_results#show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :challenges, except: [:destroy] do
    resources :user_challenges, only: :create
  end

  get 'activation/:id', to: 'challenges#activation', as: :activation

  resource :my_challenge, only: :show
  resources :transportations, only: [:new, :create]

end
