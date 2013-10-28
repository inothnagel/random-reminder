class SubmitController < ApplicationController

  def submit
    @item = Item.new
    @lists = current_user.lists.map { |l| l.name }
    @name = params[:title]
    @url = params[:url]
  end

  def create
    @list = current_user.lists.find_by_name(params[:item][:list])
    @list = create_new_user_list(params[:item][:list]) unless @list

    params[:item].delete(:list)

    @item = Item.new(params[:item])
    @item.list = @list
    @item.save

    redirect_to @list
  end

  def create_new_user_list(list_name)
    list = List.new
    list.name = list_name
    list.user = current_user
    list.save
    list
  end
end
