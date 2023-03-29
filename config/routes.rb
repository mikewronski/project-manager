Rails.application.routes.draw do
  resources :project_status_histories
  resources :comments
  resources :projects
  devise_for :users

  root "projects#index"
end
