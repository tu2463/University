Rails.application.routes.draw do
  # API routing
  scope module: 'api', defaults: {format: 'json'} do
    namespace :v1 do
      # provide the routes for the API here
      get 'departments', to: 'departments#index', as: :departments_api

      
    end
  end

  # Routes for regular HTML views go here...
  resources :departments

  # set the default route to departments#index
  root 'departments#index'

end
