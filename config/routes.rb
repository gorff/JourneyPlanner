Rails.application.routes.draw do
  # get 'stops/new'
  get 'stops/delete'
  get 'stops/Eelete'

  get 'stops/Delete'
  post 'stops/index'=> 'stops#new'
  root :to => 'pages#home'

 
  get 'transactions/new'
  post 'transactions/new' => 'transactions#update_balance'
  get 'transactions/index'

  #get 'transactions/edit'
  #get 'transactions/delete'

  get 'trips/index'
  get 'trips/new'
  post 'trips/new' => 'trips#create'
  #get 'trips/view'
  #get 'trips/edit'
  get 'trips/all' 
  


  get 'users/new'
  get 'users/create'
  get 'users/add_funds'
  resources :users #resources generates 8 routes for me

  resources :stops 


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
