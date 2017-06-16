Rails.application.routes.draw do
  get 'home/index'

  devise_for :admins
  devise_for :users
  get 'main/index'
  
  root :to => 'home#index'

  resources :students
  resources :institutions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
