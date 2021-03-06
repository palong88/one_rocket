Rails.application.routes.draw do
 

  resources :people

  resources :eadmin_tasks do
    member do
      patch :complete
      patch :not_complete
      patch :create
    end
  end

get 'users/:id/eadmin_tasks' => 'users#eadmin_tasks', :as => :user_eadmin_tasks

  
  resources :admin_tasks

  devise_for :users

  scope '/admin' do
    resources :users do
    end

     

  end


  devise_for :employees
  scope '/employee' do
    resources :employees
  end
  


 
  get "modal" => "pages#modal"

  get "new" => "users#new"
  get "all" => "admin_tasks#all"
  get "learning" => "admin_tasks#learning"
  get "milestones" => "admin_tasks#milestones"
  get "setting-up" => "admin_tasks#setting-up"

  get "show" => "users#show"
  get "about" => "pages#about"
  


  get "education" => "education_tasks#index"
  get "admin" => "admin_tasks#index"

  get "employee_tasks" => "eadmin_tasks#index"
   get "showall" => "eadmin_tasks#showall"
  get "schedule" => "schedule_tasks#index"

 
  # routes.rb
   root :to => 'passthrough#index'



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


