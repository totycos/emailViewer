Rails.application.routes.draw do

  root 'emails#index'

  get 'emails/index'

  resources :emails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
