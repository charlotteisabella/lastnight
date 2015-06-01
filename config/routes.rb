Rails.application.routes.draw do

    root :to => 'pages#home'  

    get '/drinks' => 'pages#drinks'
    get '/food' => 'pages#food'
    get '/results' => 'pages#results'
     
end
