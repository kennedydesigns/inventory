Inventory::Application.routes.draw do
  root :to => 'suppliers#index'

  resources :suppliers, :only => [:index, :show] do
    resources :items, :only => [:create, :edit, :new, :show, :update]
  end
end
