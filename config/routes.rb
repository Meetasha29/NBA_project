Rails.application.routes.draw do




  root "courses#index"
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
