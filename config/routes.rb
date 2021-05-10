Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "pages#home"
  # get '/home', to: "pages#home", as: :home

  # VERB #URL #CONTROLLER + ACTION #ALIAS(not necessary)
  get '/welcome', to: "pages#welcome", as: :welcome
  # then create a controler in terminal: rails g controller pages

  get '/about', to: "pages#about", as: :about

end
