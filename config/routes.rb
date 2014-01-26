Boaz::Application.routes.draw do
  resources :clients, :orders, :restorations

  root to: 'clients#index'
end
