FamPost::Application.routes.draw do
  root to: 'posts#index'

  # get '/posts', to: 'posts#index'
  # get '/posts/:id', to: 'post#show'
  # get '/posts/new', to: 'posts#new'
  # post '/posts', to: 'posts#create'
  # get '/posts/:id/edit', to: 'posts#edit'
  # patch '/posts/:id', to: 'posts#update'

  resources :posts, except: [:destroy] do
    resources :comments, only: [:create]
  end

<<<<<<< HEAD
  resources :categories, only: [:create,:show,:new]
  resources :users, except: [:destroy,:index, :new] 
=======
  resources :categories, only: [:create, :show, :new]
  resources :users, except: [:destroy, :index, :new]
>>>>>>> 7cc959391405710a55ecf9262c41fa4ca3d29d8e
end
