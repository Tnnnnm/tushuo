# encoding: UTF-8
 
class TaggingController < ApplicationController

  before_filter :authenticate_user!

  def edit
    @tusort = params[:id]
    @tushuo_checked = Tushuolist.tag_with(params[:id])
    if @tushuo_checked.empty?
      @with_out_checked = Tushuolist.open.all
    else
      @with_out_checked = Tushuolist.with_out_checked(@tushuo_checked)
    end  
  end

  def update
    #Tushuolist.find(tushuo).tushuosorts << Tushuosort.find(params[:id]) 
    params[:tushuo].to_a.each do |tushuo|
      if tagging
        redirect_to edit_tagging_path(tagging.tushuosort_id), :notice => 'updated success'
      else
        redirect_to edit_tagging_path, :notice => 'updated failed'
      end  
    end
  end

end
