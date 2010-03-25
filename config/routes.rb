ActionController::Routing::Routes.draw do |map|
  map.resource :user_session

  map.resources :users
 
  map.root :controller => "user_sessions", :action => "new"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
