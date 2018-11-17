Rails.application.routes.draw do
  

  get 'sessions/new'

  # get 'books/index'
  
	get '/users' => 'users#uindex'
	get '/users/:id' => 'users#show', as: :user
	get '/books/:id' => 'books#show', as: :book
  match ':controller(/:action(/:id))', :via => :get
  root 'books#home'
  get 'index' => 'books#index'
  get 'home' => 'books#home'
  get 'new' => 'books#new'
  get 'register' => 'users#register'

  get 'profile' => 'users#profile'
  
  get '/assets/book.jpg' => 'application#send_pic'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get 'logout'  => 'sessions#destroy'


  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]

  delete 'home/delete' => 'books#delete'
  

  resources :books 
  resources :users

  get 'auth/facebook' => "sessions#create"
  get '/signin' => 'sessions#new', :as => :signin
  delete 'sign_out', to: "sessions#destroy", as: 'sign_out'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'welcome#index'
  
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
end
