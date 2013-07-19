module Api
	module V2
		class TushuolistsController < ApplicationController
			respond_to :json

			def index
				respond_with Tushuolist.all
			end

		end
	end
end
