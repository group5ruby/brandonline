Rails.application.routes.draw do
  resource :traders, only: [:index, :dashboard]
  resource :customers, only: [:index, :dashboard]
  devise_for :traders, controllers: {
        registrations: 'traders/registrations'
      }
  devise_scope :traders do    
    authenticated :trader do
     root :to => "trader#dashboard"
    end  
  end

  devise_for :customers, controllers: {
        registrations: 'customers/registrations'
      }
  devise_scope :customers do    
    authenticated :customer do
      root :to => "customer#dashboard"
    end
  
  end
  

  root 'home#welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
