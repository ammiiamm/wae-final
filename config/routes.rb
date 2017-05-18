Rails.application.routes.draw do

  resources :articles do
    resources :comments
  end
  devise_for :users
  get 'site/index'
  root to: 'site#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

