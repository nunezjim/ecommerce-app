Rails.application.routes.draw do
 get '/' => 'products#index'
 #product Homepage
 get '/products' => 'products#index'
 #create a new product
 get '/products/new' => 'products#new'
 #when you hit the submit button
 post '/products' => 'products#create'
 #the page it redirects you once you clicked submit
 get '/products/:id' => 'products#show'
 #to edit the page
 get '/products/:id/edit' => 'products#edit'
 patch '/products/:id' => 'products#update'
 #delete a product
 delete 'products/:id' => 'products#destroy'
 get 'search' =>'products#search'
 #you need to create a new controller (images)
 #This is to add another image to the page
 get '/images/new' => 'images#new'
 post '/images' => 'images#create'
 #To create a new user
 get '/signup' => 'users#new'
 post '/users' => 'users#create'
 #loging and logout
 get '/login' => 'sessions#new'
 post '/login' => 'sessions#create'
 delete '/logout' => 'sessions#destroy'
 #order
 post '/orders' => 'orders#create'
 get '/orders/:id' => 'orders#show'
end
