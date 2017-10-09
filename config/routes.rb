Rails.application.routes.draw do

  devise_for :users
  resources :comments, only: [:edit, :destroy, :update, :create]

  resources :blog_posts

  get '/:name' => 'blog_posts#user_posts', as: :user_posts

  root 'blog_posts#index'

  # get 'blog_posts/index'

  # get 'blog_posts/show'

  # get 'blog_posts/edit'

  # get 'blog_posts/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
