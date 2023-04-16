Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

  get 'home/index'

  resources :paintings, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :reviews, only: [:create, :destroy]
  end

  root 'home#index'
end
