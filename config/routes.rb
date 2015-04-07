Rails.application.routes.draw do

  root 'welcome#index'

  get 'sign-up' => 'registration#new'
  post 'sign-up' => 'registration#create'

  get 'sign-in' => 'authentication#new'
  post 'sign-in' => 'authentication#create'

  resources :users, only: [:show, :edit, :update]

end
