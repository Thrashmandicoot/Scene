Rails.application.routes.draw do
  root 'galleryhomepage#index'

  controller :about do
    get 'about-us' => 'about#index'
  end

  get 'tags/show'

  get 'api/pieces' => 'galleryhomepage#api'

  resources :organizations do
    resources :spaces
  end

  controller :artists do
    get 'local_artists' => 'artists#local_artists'
    get 'user_location' => 'artists#user_location'
  end

  controller :spaces do
    get 'spaces' => 'spaces#all_spaces'
    
  end

  controller :pieces do
    get 'pieces' => 'pieces#all_pieces'
  end

  resources :tags, only: [:show]

  resources :artists do
    resources :pieces
  end

  resources :sessions, only: [:new, :create, :destroy]

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    post 'logout' => :destroy
  end

end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
