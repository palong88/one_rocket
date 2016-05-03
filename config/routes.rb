Rails.application.routes.draw do
  resources :people
  resources :people
  resources :eeducation_tasks
  resources :eadmin_tasks
  resources :eadmin_tasks
  resources :eadmin_tasks
  resources :eadmin_tasks
  resources :schedule_tasks
  resources :admin_tasks
  resources :education_tasks
  resources :education_tasks
  resources :education_tasks
  resources :education_tasks
  resources :pins
  devise_for :users
  scope '/admin' do
    resources :users
  end
  
  root "admin_tasks#index"
  get "modal" => "pages#modal"

  get "new" => "users#new"
  get "all" => "admin_tasks#all"
  get "learning" => "admin_tasks#learning"
  get "milestones" => "admin_tasks#milestones"
  get "setting-up" => "admin_tasks#setting-up"

  get "show" => "users#show"
  get "about" => "pages#about"
  get "pins" => "pins#index"
  get "people" => "people#index"
  get "education" => "education_tasks#index"
  get "admin" => "admin_tasks#index"
  get "employee" => "eadmin_tasks#index"
  get "employee_education" => "eeducation_tasks#index"
  get "schedule" => "schedule_tasks#index"


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


