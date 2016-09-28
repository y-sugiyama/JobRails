class ContactsController < ApplicationController
  
  def new
  
    @contact = Contact.new

  end
  
  def confirm
    @contact = Contact.new(contact_params)
        
    
    if @contact.valid?
       session[:contact] = @contact
      render :confirm
    else
      render :new
    end
  end
  
  def thanks
     
   
     @contact = Contact.new(session[:contact])
        #メールインスタンス生成用のメーラークラス.クラスメソッド.deliverメソッド→メール送信
   
    
    if @contact.save
       MailSenderMailer.inquiry(@contact).deliver
      session[:contact] = nil
      redirect_to top_path, notice:'お問い合わせメールの送信が完了しました'
    else
      render :new
    end 
 
  end
  

  
  private
  def contact_params
    params.require(:contact).permit(:id,:email, :name, :message)
  end
end

#  def create
#    @contact = Contact.new(contact_params)
#    #メールインスタンス生成用のメーラークラス.クラスメソッド.deliverメソッド→メール送信
#    MailSenderMailer.inquiry(@contact).deliver
#    if @contact.save
#      redirect_to top_path, notice:'お問い合わせメールの送信が完了しました'
#    else
#      render :new
#    end
#  end
