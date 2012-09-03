Smads::Application.routes.draw do
  resources :broadcasts, :only => [:show, :index, :create, :new]

  resources :subscribers do
    collection do
      get :broadcast
    end
  end

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
end
