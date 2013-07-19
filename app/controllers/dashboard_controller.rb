# encoding: UTF-8
 
class DashboardController < ApplicationController

  before_filter :authenticate_user!

  def index
    @tushuolist = Tushuolist.open.all
    @tushuosort = Tushuosort.open.all
  end
  
end
