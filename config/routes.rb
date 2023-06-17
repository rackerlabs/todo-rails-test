Rails.application.routes.draw do
  resources :lists do
    scope module: :lists do
      resources :tasks
    end
  end

  root to: 'lists#index'
end
