Rails.application.routes.draw do
  devise_for :users
  # get 'albums/index'
  # get 'albums/show'
  # get 'songs/index'
  # get 'songs/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'songs#index'
  resources :songs, only: %i[index show] do
    collection do
      get "search"
    end
  end

  resources :albums, only: %i[index show] do
    collection do
      get "search"
    end
  end

  resources :cart, only: %i[index create destroy]
end
