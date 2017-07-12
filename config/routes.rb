Rails.application.routes.draw do




  root 'home#index'
  devise_for :users, controllers: { registrations: 'registrations',sessions: 'sessions'}

  resources :courses do
    member do
      get :delete
    end
  end
  resources :departments do
    member do
      get :delete
    end
  end

  resources :faculties do
    member do
      get :delete
    end
  end





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
