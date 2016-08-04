Rails.application.routes.draw do
 #product Homepage
 get 'products' => 'products#index'
 #create a new product
 get 'products/new' => 'products#new'
 #when you hit the submit button
 post '/products' => 'products#create'
 #the page it redirects you once you clicked submit
 get 'products/:id' => 'products#show'
end
