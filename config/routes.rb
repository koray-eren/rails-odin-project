Rails.application.routes.draw do
  root 'cars#index'
  
  concern :commentable do
    resources :comments
  end

  resources :cars, concerns: :commentable
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
