class MmemosController < ApplicationController
  
  before_action :correct_user, only: [:show, :edit, :update, :destroy]

  def new
    @mmemo = Mmemo.new
  end

  def create
    mmemo = Mmemo.create(mmemo_params)
    if mmemo.save
      flash[:memo] = 'メモを作成しました。'
      redirect_to root_path
    else
      flash[:memo] = '入力項目を入力してください。'
      redirect_to new_mmemo_path
    end
  end

  def show
    @mmemo = Mmemo.find(params[:id])
  end

  def edit
    @mmemo =Mmemo.find(params[:id])
  end

  def update
    mmemo = Mmemo.find(params[:id])
    if mmemo.update(mmemo_params)
      flash[:memo] = 'メモを更新しました。'
      redirect_to root_path
    else
      flash[:memo] = '入力項目を入力してください。'
      redirect_to edit_mmemo_path
    end
  end

  def destroy
    mmemo = Mmemo.find(params[:id])
    if mmemo.destroy
      flash[:memo] = 'メモを削除しました。'
      redirect_to root_path
    else
      flash[:memo] = 'メモを削除出来ませんでした。'
      redirect_to root_path
    end
  end


  private

  def mmemo_params
    params.require(:mmemo).permit(:deadline,:comment).merge(user_id: current_user.id)
  end

  def correct_user
    @mmemo = current_user.mmemos.find_by(id: params[:id])
    unless @mmemo
      flash[:memo] = '他ユーザーの情報へはアクセス出来ません。'
      redirect_to root_path
    end
  end
end
