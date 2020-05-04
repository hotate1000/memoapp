class MmemosController < ApplicationController
  
  def new
    @mmemo = Mmemo.new
  end

  def create
    @mmemo = Mmemo.create(mmemo_params)
    redirect_to root_path
  end

  def show
    @mmemo = Mmemo.find(params[:id])
  end

  def edit
    @mmemo =Mmemo.find(params[:id])
  end

  def update
    mmemo = Mmemo.find(params[:id])
    mmemo.update(mmemo_params)
    redirect_to root_path
  end

  def destroy
    mmemo = Mmemo.find(params[:id])
    mmemo.destroy
    redirect_to root_path
  end

  private
  def mmemo_params
    params.require(:mmemo).permit(:deadline,:comment)
  end
end
