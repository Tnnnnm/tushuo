Tushuo::Application.routes.draw do

	namespace :api, defaults: {format: 'json'} do

		namespace :v1 do
		  resources :tushuolists, :only => [:index, :show]
		  resources :tushuosorts, :only => [:index, :show]
		end
	
		namespace :v2 do
				resources :tushuolists, :only => [:index, :show]
				resources :tushuosorts, :only => [:index, :show]
		end

	end

  resources :dashboard, :only => [:index]
  resources :tushuolist
  resources :tushuosort

  #resources :category do
  #  resources :tushuolist
  #end

  post "/signin" => "session#create"
  get "/signout" => "session#destory"

  root :to => 'session#index'

end
