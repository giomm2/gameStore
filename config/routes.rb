Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "products#index"
  resources :products do
    collection do
      get :pc
      get :switch
      get :play4
      get :xbox_one
    end
  end
end
