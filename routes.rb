RestCountries::Application.routes.draw do
  resources :countries, only: [:index, :show]
  root 'countries#index'
end
