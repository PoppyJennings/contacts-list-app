Rails.application.routes.draw do
  root 'contacts#index'
  get 'search', to: 'search#index'
  resources :contacts

  resources :contacts do
    get :rollback
  end
  # root to: 'contacts#index'
end
