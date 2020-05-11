class DmemosController < ApplicationController

  before_action :correct_user, except: [:index, :new, :create]
  
  def new
    @dmemo = Dmemo.new
  end

  def create
    dmemo = Dmemo.create(dmemo_params)
    if dmemo.save
      flash[:memo] = 'メモを作成しました。'
      redirect_to root_path
    else
      flash[:memo] = '入力項目を入力してください。'
      redirect_to new_dmemo_path
    end
  end

  def show
    @dmemo = Dmemo.find(params[:id])
  end

  def edit
    @dmemo = Dmemo.find(params[:id])  
  end

  def update
    dmemo = Dmemo.find(params[:id])
    if dmemo.update(dmemo_params)
      flash[:memo] = 'メモを更新しました。'
      redirect_to root_path
    else
      flash[:memo] = '入力項目を入力してください。'
      redirect_to edit_dmemo_path
    end
  end

  def destroy
    dmemo = Dmemo.find(params[:id])
    if dmemo.destroy
      flash[:memo] = 'メモを削除しました。'
      redirect_to root_path
    else
      flash[:memo] = 'メモを削除出来ませんでした。'
      redirect_to root_path
    end
  end


  private

  def dmemo_params
    params.require(:dmemo).permit(:deadline,:comment).merge(user_id: current_user.id)
  end

  def correct_user
    @dmemo = current_user.dmemos.find_by(id: params[:id])
      unless @dmemo
        flash[:memo] = '他ユーザーの情報へはアクセス出来ません。'
        redirect_to root_path
      end
  end
end