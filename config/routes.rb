Rails.application.routes.draw do
  resources :quotes
  post 'authenticate', to: 'authentication#authenticate'
end
