module Api
	module V1
		class TushuolistsController < ApplicationController
			respond_to :json

			def index
				respond_with Tushuolist.open.all
			end

		end
	end
end
