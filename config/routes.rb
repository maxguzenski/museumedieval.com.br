ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  map.namespace :admin do |admin|
    admin.resources :models
    admin.resources :souvenirs
    admin.resources :cutlers
    admin.resources :comments
    admin.resources :family_searches, :only => [:index]
    admin.resources :families, :only => [:index]
    admin.resources :orders
    admin.resources :client_searches
  end

  map.resource  :home, :controller => 'home', :only => [:show]
  map.resource  :cart, :controller => 'cart'
  map.resource  :login, :only => [:new, :create, :destroy]
  map.resource  :contact, :controller => 'contact', :only => [:show, :create]
  map.resources :museum_comments, :only => [:index, :new, :create]
  map.resources :product_comments, :only => [:new, :create]
  map.resources :comments, :only => [:index]
  map.resources :clients
  map.resources :brasoes, :singular => :brasao, :only => [:index, :show]
  map.resources :souvenirs, :only => [:index, :show]
  map.resources :cutlers, :as => "cutelaria", :only => [:index, :show]
  map.resources :client_searches


  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => :home, :action => :show
  map.admin 'admin/', :controller => 'admin/models', :action => :index

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.connect 'opiniao/:token/:id', :controller => :logins, :action => :login_from_token
end
