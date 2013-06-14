class HomeController < ApplicationController

before_filter :authenticate_user!

	def index
		@assets = Asset.where(:protected => false)
	end
end
