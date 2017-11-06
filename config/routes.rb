Rails.application.routes.draw do
  resource :clients do
    resources :exemplars
  end

  resources :issues


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
