Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # list all tasks
  get '/tasks', to: 'tasks#index'

  # create a task
  get 'tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'

  # show une task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # edit une task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # delete une task
  delete '/tasks/:id', to: 'tasks#destroy', as: :destroy_task
end
