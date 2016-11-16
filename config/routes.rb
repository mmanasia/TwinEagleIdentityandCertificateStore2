Rails.application.routes.draw do
   # get 'users/index'

  mount RailsAdmin::Engine => '/admin_panel', as: 'rails_admin'

  devise_for :users, :path_prefix => 'd'
  resources :users, :only =>[:show]

  match '/users',   to: 'users#index',   via: 'get'
  match '/users/:email',     to: 'users#show',       via: 'get'

  resources :member_groups
  resources :user_groups
  resources :user_access_audit_logs
  resources :teics_audit_logs
  resources :roles
  resources :store_accesses
  resources :cert_source_links
  resources :user_source_links
  resources :user_store_roles
  resources :cert_store_roles
  resources :user_stores
  resources :cert_stores
  resources :identity_types
  resources :environments
  resources :source_links
  resources :sources
  resources :home
  resources :welcome

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'

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
