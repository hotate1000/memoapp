class DmemosController < ApplicationController

  def new
    @dmemo = Dmemo.new
  end

  def create
    dmemo = Dmemo.create(dmemo_params)
    redirect_to root_path
  end

  def show
    @dmemo = Dmemo.find(params[:id])
  end

  def edit
    @dmemo = Dmemo.find(params[:id])
    
  end

  def update
    dmemo = Dmemo.find(params[:id])
    dmemo.update(dmemo_params)
    redirect_to root_path
  end

  def destroy
    dmemo = Dmemo.find(params[:id])
    dmemo.destroy
    redirect_to root_path
  end

  private
  def dmemo_params
    params.require(:dmemo).permit(:deadline,:comment).merge(user_id: current_user.id)
  end
end