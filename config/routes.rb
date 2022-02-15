Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # create
  get '/tasks/new', to: 'tasks#new', as: :new_task
  # We need another route to send our form information to
  post '/tasks', to: 'tasks#create', as: :tasks

  # read
  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show', as: :task
  # update

  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # Destroy
  delete '/tasks/:id', to: 'tasks#destroy'
end
