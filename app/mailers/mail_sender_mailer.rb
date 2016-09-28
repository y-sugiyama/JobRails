class MailSenderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #メールインスタンス生成用のメーラークラス
  #   en.mail_sender_mailer.inquiry.subject
  #メールインスタンスを生成して返すメソッド
  def inquiry(contact)
    @contact = contact

    mail to: "sustainable.future55@gmail.com"
  end
end
