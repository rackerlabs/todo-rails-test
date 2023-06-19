Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists do
    scope module: :lists do
      resources :tasks
    end
  end

  namespace :api do
    namespace :v1 do
      resources :lists, only: [:index, :show] do
      end
    end
  end

end
