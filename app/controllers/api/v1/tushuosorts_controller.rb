module Api
	module V1
		class TushuosortsController < ApplicationController
			respond_to :json

			def index
				respond_with Tushuosort.open.all
			end

		end
	end
end
