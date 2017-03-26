Rails.application.routes.draw do
  devise_for :customers
  devise_for :traders
  root 'home#welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end