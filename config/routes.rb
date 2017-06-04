Rails.application.routes.draw do

  root to: "posts#index"
  get "/posts", to: 'posts#index'
  get "/posts/new", to: 'posts#new'
  post "/posts/new", to: 'posts#create'
  get "/posts/confirm/:id", to: 'posts#check'
  patch "/posts/update/:id", to: 'posts#confirm'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
