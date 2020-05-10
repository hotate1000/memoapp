class MemosController < ApplicationController
  def index
    @memos = Memo.all
    @mmemos = Mmemo.all
    @dmemos = Dmemo.all
  end

  def new
    @memo = Memo.new
  end

  def create
    memo = Memo.create(memo_params)
    if memo.save
      flash[:memo] = 'メモを作成しました。'
      redirect_to root_path
    else
      flash[:memo] = '入力項目を入力してください。'
      redirect_to new_memo_path
    end
  end

  def show
    @memo = Memo.find(params[:id])
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    memo = Memo.find(params[:id])
    if memo.update(memo_params)
      flash[:memo] = 'メモを更新しました。'
      redirect_to root_path
    else
      flash[:memo] = '入力項目を入力してください。'
      redirect_to  edit_memo_path
    end
  end

  def destroy
    memo = Memo.find(params[:id])
    if memo.destroy
      flash[:memo] = 'メモを削除しました。'
      redirect_to root_path
    else
      flash[:memo] = 'メモを削除出来せんでした。'
      redirect_to root_path
    end
  end
  
  private 
  def memo_params
    params.require(:memo) .permit(:deadline,:time,:comment).merge(user_id: current_user.id)
  end
end