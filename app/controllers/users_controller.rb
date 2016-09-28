class UsersController < ApplicationController
#  以下のアクションのときだけ､アクションを呼び出す前にset_userメソッドを呼び出す
  before_action :set_user, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!


  
  def index
    @users = User.all
  end
  
  def new
     authorize! 
    @user = User.new
  end
  
  def create
    
   
    @user = User.new(user_params)
     authorize! @user
    if @user.save
      redirect_to root_path ,notice:'ユーザ登録が完了しました'
    else
      # アクションを経由せずに指定したビューファイルを表示する
      render :new
      
    end
  end
  

  def destroy
     authorize! 
    @user.destroy
    redirect_to root_path ,   notice:'ユーザを削除しました'
  end

  def edit
         authorize! 
  end
  
  def update

    authorize! @user
    if @user.update(user_params)    
      redirect_to root_path , notice:'ユーザを更新しました'
    else
      render :edit
      
    end
  end
  
  def show
  
  end

  private
  #users_controller内だけで使用するのでprivateにかく
  #createメソッドの引数が長いのでメソッドの戻り値に指定
  def user_params
    #   フォームに不正な値が入ってないかフィルタリング
    #ストロングパラメータを使って保存を許可するカラムを指定
    #params[:user]={ email:"piyopiyo@ppp.com", password:"piyopiyo", role:"admin"}を許可するという意味
    params.require(:user).permit(:id,:email,:password,:role,:password_confirmation)
  end
  
  def set_user
    @user = User.find(params[:id])
  end

end