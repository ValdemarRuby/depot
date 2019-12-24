Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products do
    get :who_bought, on: :member
  end

  resources :contacts

  root to: 'store#index', as: 'store'
end
