Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'census#decision'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  get 'sign-up' => 'registration#new'
  post 'sign-up' => 'registration#create'

  get 'sign-in' => 'authentication#new'
  post 'sign-in' => 'authentication#create'

  resources :users, only: [:show]

end
