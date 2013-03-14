Homuhomu::Application.routes.draw do

  root :to => 'homus#index'
  get 'link', :to => 'homus#link'
  get 'make', :to => 'homus#make'
  get 'about', :to => 'homus#about'

end
