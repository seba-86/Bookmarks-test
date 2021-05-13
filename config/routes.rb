Rails.application.routes.draw do
  resources :kinds
  resources :bookmarks
  resources :categories
root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
