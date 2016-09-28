# スーパークラスを継承してサブクラスをつくる クラスとメソッドを引き継ぎ｡継承できるクラスは1つまで｡
class UsersLoyalty < ApplicationLoyalty
  
 # インスタンスメソッドの定義
 def update?
   #userはcurrent_userのこと
    user.admin? || user.id == record.id
  end

  def create?
   #userはcurrent_userのこと
    user.admin?
  end
  
    def destroy?
   #userはcurrent_userのこと
    user.admin?
  end
  
   def new? #formを表示する
      user.admin?
   end
   
   def edit? #formを表示する
      user.admin?
   end

end
