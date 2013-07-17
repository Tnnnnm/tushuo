Tushuo::Application.routes.draw do

	namespace :api, defaults: {format: 'json'} do

		namespace :v1 do
		  resources :products, :only => [:index, :show]
		end
	
		namespace :v2 do
				resources :products, :only => [:index, :show]
		end

	end

  resources :dashboard, :only => [:index]

  post "/signin" => "session#create"
  get "/signout" => "session#destory"

  root :to => 'session#index'

end
