class ItemsController < ApplicationController
  
  def index
    @items = Item.all 
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new 
  end

  def create
    @item = Item.build(params[:item])
    render json: @item
  end

  def edit
    @item = Item.find(params[:id]) 
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes!(params[:item]) 
      render json: @item
    else
     render json: {success: false} 
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      render json: {success: true}
    else
      render json: {succes: false}
    end
  end
end
