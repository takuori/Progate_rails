Rails.application.routes.draw do
  get 'signup' => 'users#new'
  post 'users/create' => 'users#create'
  get 'users/index' => 'users#index'
  get 'users/:id' => 'users#show'
  get 'users/:id/edit' => 'users#edit'
  get 'users/:id/update' => 'users#update'
  
  get '/' => 'home#top'
  get 'about' => 'home#about'
  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  get 'posts/:id' => 'posts#show'
  post 'posts/create' => 'posts#create'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id/update' => 'posts#update'
  post 'posts/:id/destroy' => 'posts#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
