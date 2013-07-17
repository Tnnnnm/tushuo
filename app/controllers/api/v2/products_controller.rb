module Api
	module V2
		class ProductsController < ApplicationController
			respond_to :json

			def index
				respond_with Foobar.all
			end

		end
	end
end
