Rails.application.routes.draw do
  devise_for :users
  get 'main/index'
  
  root :to => 'main#index'

  resources :students
  resources :institutions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
