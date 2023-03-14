Rails.application.routes.draw do
  # API routing
  scope module: 'api', defaults: {format: 'json'} do
    namespace :v1 do
      # provide the routes for the API here

      
      
    end
  end

  # Routes for regular HTML views go here...
  resources :departments

  # set the default route to departments#index
  root 'departments#index'

end
