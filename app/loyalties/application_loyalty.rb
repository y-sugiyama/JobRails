class ApplicationLoyalty
#  アクセサメソッドでuserとreordのゲッターとセッターを同時にを定義
# クラス外からでもインスタンス変数@user @recordの値を取得､変更できるように｡
  attr_reader :user, :record

  #initializeメソッドは
  def initialize(user, record)
    @user = user
    @record = record
  end

  
  
  

  # 真偽値を返すメソッドは?がつく
  def index?
    false
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end
end
