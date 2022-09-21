Rails.application.routes.draw do
  resources :contacts
  resources :beginnings
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  namespace :Contacto do
    root "/contacts#new"
  end
  
  root "beginnings#new"

end
