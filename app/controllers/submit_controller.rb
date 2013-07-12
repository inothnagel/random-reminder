class SubmitController < ApplicationController

  def submit
    @item = Item.new
    @name = params[:title]
    @url = params[:url]
  end

  def create
    @list = List.find(params[:list][:list_id])
    params[:item].delete(:list_id)

    @item = Item.new(params[:item])
    @item.list = @list
    @item.save

    redirect_to @list
  end
end
