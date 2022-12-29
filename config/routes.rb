Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"\
  get '/contact' , to:"root#contact"
  get '/index', to:"root#index"
  get '/about', to:"root#about"
  post'/add', to:"root#add"
  delete '/delete/:id', to:"root#delete"
  get'/update/:id' ,to:'root#update'
  get'/updateform', to:'root#updateform'
  get'/search',to:'root#search'
  root "root#index"
end
