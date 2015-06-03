Rails.application.routes.draw do

    root :to => 'pages#home'  

    get '/drinks/:age' => 'pages#drinks', :as => 'drinks'
    get '/drinks_results/:age' => 'pages#drinks_results'
    get '/food' => 'pages#food'
    get '/results' => 'pages#results'
    get '/stats' => 'pages#stats'
    get '/stats_results' => 'pages#stats_results'
    get '/users_new' => 'users#users_new'
     
end
