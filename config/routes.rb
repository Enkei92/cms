Rails.application.routes.draw do
  root 'posts#index'
  resources :posts, param: :slug
  resources :posts do
    collection do
      get :published
      get :unpublished
    end
  end
end
