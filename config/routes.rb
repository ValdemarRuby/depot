Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'admin/index'
  resources :users
  resources :orders
  resources :line_items
  resources :carts
  #get 'store/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :products do
  #  get :who_bought, on: :member
  #end

  resources :contacts
  scope '(:locale)' do
    resources :orders
    resources :line_items
    resources :carts
    resources :products
    root to: 'store#index', as: 'store', via: :all
  end
end
