Rails.application.routes.draw do
  get 'home/index'
  get 'home/statistics'

  devise_for :admins
  devise_for :users
  get 'main/index'
  
  root :to => 'home#index'

  resources :institutions do
  	resources :students
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
