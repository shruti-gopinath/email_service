class EmailMailer < ApplicationMailer
  default :from => 'example@example.com'

  # Sends email to the recipient after the POST is created
  #
  # params - information created by the POST call
  #
  # Returns nothing
  def send_email(params)
    @params = params
    mail(:to => @params.to, :subject => @params.subject, :body => @params.body)
  end
end