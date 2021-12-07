Rails.application.routes.draw do
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

end
