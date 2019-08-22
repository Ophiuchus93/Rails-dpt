class ItemsController < ApplicationController
  before_action :set_depart
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  def index
    @item = @depart.items
  end

  def show
  end

  def new
    @item = @depart.items.new
    render partial: "form"
  end

  def create
    @item = @depart.items.new(item_params)

    if @item.save
      redirect_to sub_items_path(@item)
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @item.update(item_params)
      redirect_to depart_item_path(@depart, @item)
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to depart_items_path(@item)
  end

  private
    def set_depart
      @depart = Depart.find(params[:depart_id])
    end

    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.required(:item).permit(:name, :description)
    end
end
