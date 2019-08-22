class DepartsController < ApplicationController
  before_action :set_depart, only: [:show, :edit, :update, :destroy]
  def index
    @departs = Depart.all
  end

  def show
  end

  def new
    @depart = Depart.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @depart = Depart.new(depart_params)

    if @depart.save 
      redirect_to departs_path
    else 
      render :new
    end
  end

  def update
    if @depart.update(depart_params)
      redirect_to depart_path(@depart)
    else
      render :edit
    end
  end

  def destroy
    @depart.destroy
    redirect_to departs_path
  end

  private
    def depart_params
      params.required(:depart).permit(:dpt_name)
    end

    def set_depart
      @depart = Depart.find(params[:id])
    end

end
