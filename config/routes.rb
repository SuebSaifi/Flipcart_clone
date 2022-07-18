Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   get "sign_up" , to:"registrations#new"
   post "sign_up",to:"registrations#create"
   delete "logout", to:"sessions#destroy"
   
   get "sign_in" ,to:"sessions#new"
   get "sign_in" ,to:"sessions#create"

   # Defines the root path route ("/")
   # root "articles#index"
   get "user",to:"main#index"
end
