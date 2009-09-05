ActionController::Routing::Routes.draw do |map|
  map.resources :users
  map.resources :sounds
  map.root :controller => :welcome
  map.username ':username', 
    :controller => 'users',
    :action => 'show'    
  map.signup  'signup',
    :controller => 'clearance/users',
    :action     => 'new'
  map.signin  'signin',
    :controller => 'clearance/sessions',
    :action     => 'new'
  map.signout 'signout',
    :controller => 'clearance/sessions',
    :action     => 'destroy',
    :method     => :delete
end
