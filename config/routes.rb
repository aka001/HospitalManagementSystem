Project::Application.routes.draw do
  get "access/menu"
  get "access/login"
  #get "access/attempt_login"
  post "access/attempt_login"
  post "access/logout"
  get "access/logout"
  post "users/create_doctor"
  get "users/new_doctor"
  get "users/list_doctor"
  get "users/edit_doctor"
  post "users/update_doctor"
  get "users/delete_doctor"
  post "users/destroy_doctor"
  get "users/show_doctor"
  get "users/list_assistant"
  get "users/show_assistant"
  get "users/edit_assistant"
  get "users/delete_assistant"
  post "users/destroy_assistant"
  get "users/new_assistant"
  post "users/create_assistant"
  get "users/edit_assistant"
  post "users/update_assistant"
  get "users/search_doctor"
  get "users/search_perform_action"
    
  get "users/list_patient"
  #post "users/list_patient"
  get "users/show_patient"
  get "users/edit_patient"
  get "users/delete_patient"
  post "users/destroy_patient"
  get "users/new_patient"
  post "users/create_patient"
  get "users/edit_patient"
  post "users/update_patient"
  
  get "users/appointment"
  get "users/request_appointment"
  post "users/confirm_appointment"
  
  get "users/show_appointment"
  #post "users/action_appointment_doctor"
  get "users/action_appointment_doctor"
  
  get "users/prescription_doctor"
  post "users/prescription_form_doctor"
  get "users/show_prescription"
  
  resources :permissions

  resources :roles

  resources :users

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
