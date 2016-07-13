Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, :admin
  namespace :admin do
  	resources :products
  end
  root "products#index"
  

end
