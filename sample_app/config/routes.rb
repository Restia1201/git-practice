Rails.application.routes.draw do
  
  get 'lists/new'
  get 'top' => 'homes#top'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/show'
  get 'lists/edit'

end