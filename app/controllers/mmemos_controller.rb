class MmemosController < ApplicationController

  def index
  end
  
  def new
    @mmemo = Mmemo.new
  end

  def create
    @mmemo = Mmemo.create(mmemo_params)
    redirect_to root_path
  end

  private
  def mmemo_params
    params.require(:mmemo).permit(:deadline,:comment)
  end
end
