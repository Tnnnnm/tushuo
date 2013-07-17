module Api
	module V1
		class ProductsController < ApplicationController
			respond_to :json

			def index
				respond_with Foobar.all
			end

		end
	end
end
