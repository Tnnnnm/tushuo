module Api
	module V2
		class TushuosortsController < ApplicationController
			respond_to :json

			def index
				respond_with Tushuosort.all
			end

		end
	end
end
