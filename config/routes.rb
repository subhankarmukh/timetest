Rails.application.routes.draw do
  resources :blog_categories
  resources :blog_posts
  root to: 'blog_posts#index'
  devise_for :users
  resources :users
end
