Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :jobs
  
end
