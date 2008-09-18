ActionController::Routing::Routes.draw do |map|
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users
  map.resource :session
  
  map.feed '/feed.atom', :controller => 'dashboard', :action => 'feed', :format => 'atom'

  map.root :controller => 'dashboard', :action => 'index'
  map.resources :books, { :member => { :notify => :post, :reload => :put } } do |books|
    books.resources :loans
  end
  map.resources :authors
  map.resources :publishers
  map.resources :searches
  map.resources :loans
end
