class MemosController < ApplicationController
  def index
    @memos = Memo.all
  end

  def new
    @memo = Memo.new
  end


  def create
    @memo = Memo.create(memo_params)
    if @memo.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def show
    @memo = Memo.find(params[:id])
  end

  def edit
    @memo = Memo.find(params[:id])
  
  end

  
  private 
  def memo_params
    params.require(:memo) .permit(:deadline,:time,:comment)
  end
end