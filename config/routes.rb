Rentalfox::Application.routes.draw do
  root 'reviews#index'
  # resources :reviews

  get 'reviews', to: 'reviews#index', as: :reviews

  post 'reviews', to: 'reviews#create'

  get 'reviews/new', to: 'reviews#new',         as: :new_review

  get 'reviews/:id/edit', to: 'reviews#edit',   as: :edit_review

  get 'reviews/:id', to: 'reviews#show',        as: :review

  patch 'reviews/:id', to: 'reviews#update',     as: :update_review

  put 'reviews/:id', to: 'reviews#update'

  delete 'reviews/:id', to: 'reviews#destroy',  as: :delete_review

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
