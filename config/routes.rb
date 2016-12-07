Rails.application.routes.draw do

  root    'proyects#index'
  
  get 'registro' => 'users#new'
  post 'registro' => 'users#create'
  get 'users/:id' => 'users#show'
  delete 'logout' => 'sessions#destroy'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  resources :users do
    resources :proyects
  end

  get 'proyect/:id' => 'proyects#show', as: 'proyect'
  post 'proyect/:id' => 'registers#create'

end
