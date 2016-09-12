Rails.application.routes.draw do
  # get 'welcome/index'
  resources :articles # Creates restful routes for 'articles'
  root 'welcome#index' # Directs root to welcome/index
end
