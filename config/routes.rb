Rails.application.routes.draw do
  devise_for :users
  root to:"tops#index"

  resources :incomes
  resources :fixedcosts
  resources :variables
end
