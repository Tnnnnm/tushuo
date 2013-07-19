# encoding: UTF-8
 
class TushuosortController < ApplicationController

  before_filter :authenticate_user!

  def index
    @tushuosort = Tushuosort.paginate(:page => params[:page], :per_page => '12')
  end

  def new

  end

  def create
    @tushuosort = Tushuosort.new(:title => params[:title], :status => params[:status], :tushuocover => params[:tushuocover])
    if @tushuosort.save
      redirect_to tushuosort_index_path, :notice => 'created success'
    else
      render :new
    end
  end

  def edit
    @tushuo = Tushuosort.find(params[:id])
  end

  def update
    @tushuo = Tushuosort.find(params[:id])
    @tushuo.title = params[:title]
    @tushuo.status = params[:status]
    @tushuo.tushuocover = params[:tushuocover]
    if @tushuo.save
      redirect_to(edit_tushuosort_path(@tushuo.id), :notice => 'updated success')
    else
      render :action => 'edit'
    end  
  end

  def destroy
    Tushuolist.destroy(params[:id])
    redirect_to(tushuosort_index_path, :notice => 'destroied success')
  end

end
