Rails.application.routes.draw do
  resource :traders, only: [:index, :dashboard]
  devise_for :customers
  devise_for :traders, controllers: {
        registrations: 'traders/registrations'
      }
  devise_scope :traders do 
    
    authenticated :trader do
     root :to => "trader#dashboard"
    end
  
  end
  

  root 'home#welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
