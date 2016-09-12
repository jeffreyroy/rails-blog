Rails.application.routes.draw do
  # get 'welcome/index'
  resources :articles do # Creates restful routes for 'articles'
    resources :comments  # Create nested routes for 'comments'
  end
  root 'welcome#index' # Directs root to welcome/index
end
