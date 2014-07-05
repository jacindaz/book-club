Rails.application.routes.draw do
  resources :books, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end

  root 'books#index'
end
