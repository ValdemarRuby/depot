Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  #get 'admin/index'
  #get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users

  #get 'store/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :products do
  #  get :who_bought, on: :member
  #end

  resources :contacts
  resources :products

  scope '(:locale)' do
    resources :orders
    resources :line_items
    resources :carts
    root to: 'store#index', as: 'store', via: :all
  end
end
