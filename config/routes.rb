Rails.application.routes.draw do
  root to:"tops#index"

  resources :incomes
end
