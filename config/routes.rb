Rails.application.routes.draw do
  root to: "conferences#index"
  resources :conferences
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
