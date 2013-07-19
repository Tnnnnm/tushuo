# encoding: UTF-8
 
class TushuolistController < ApplicationController

  before_filter :authenticate_user!

  def index
    @tushuolist = Tushuolist.paginate(:page => params[:page], :per_page => '12')
  end

  def new

  end

  def create
    @tushuolist = Tushuolist.new(:title => params[:title], :status => params[:status], :tushuoimg => params[:tushuoimg])
    if @tushuolist.save
      redirect_to tushuolist_index_path, :notice => 'created success'
    else
      render :new
    end
  end

  def edit
    @tushuo = Tushuolist.find(params[:id])
  end

  def update
    @tushuo = Tushuolist.find(params[:id])
    @tushuo.title = params[:title]
    @tushuo.status = params[:status]
    @tushuo.tushuoimg = params[:tushuoimg]
    if @tushuo.save
      redirect_to(edit_tushuolist_path(@tushuo.id), :notice => 'updated success')
    else
      render :action => 'edit'
    end  
  end

  def destroy
    Tushuolist.destroy(params[:id])
    redirect_to(tushuolist_index_path, :notice => 'destroied success')
  end

end
