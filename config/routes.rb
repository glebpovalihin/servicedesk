Rails.application.routes.draw do
  root 'exemplars#index'
  resources :exemplars
  resources :issues
  resources :charts

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
