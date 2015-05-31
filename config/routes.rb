Rails.application.routes.draw do
  get 'pages/session'

  get 'pages/users'

    root :to => 'pages#home'  

    get '/drinks' => 'pages#drinks'
    get '/food' => 'pages#food'
    get '/results' => 'pages#results'
     
end
