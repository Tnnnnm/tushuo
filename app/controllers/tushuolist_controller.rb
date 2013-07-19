# encoding: UTF-8
 
class TushuolistController < ApplicationController

  before_filter :authenticate_user!

  def index
    @tushuolist = Tushuolist.open.paginate(:page => params[:page], :per_page => '1')
  end

  def new

  end

  def create
    @tushuolist = Tushuolist.new(:title => params[:title], :status => params[:status], :tushuoimg => params[:tushuoimg])
    if @tushuolist.save
      redirect_to tushuolist_index_path, :notice => 'successfully'
    else
      render :new
    end
  end

end
