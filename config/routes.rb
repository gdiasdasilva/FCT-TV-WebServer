Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :users
  resources :contents

  resources :contents do
    member do
      put "like", to: "contents#like"
      put "dislike", to: "contents#dislike"
      put "mark", to: "contents#mark_content"
      put "unmark", to: "contents#unmark"
    end
  end

  resources :playlist_items do
    collection { post :sort }
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'contents#index'
   get '/calendar' => 'pages#calendar'
   get '/readlater' => 'pages#readlater'
   get '/popular' => 'contents#popular'
   get 'tagged' => 'contents#tagged', :as => 'tagged'
   get '/info' => 'pages#info'

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
