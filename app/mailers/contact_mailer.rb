class ContactMailer < ApplicationMailer
  #default from: "noreply@greenagrobiotech.com"
 
  default to: "admin@jprbrajputagro.com"

  def new_message(message)
    @name = message.name
    @email =  message.email
    @mobile_no = message.mobile_no
    @address = message.address
    @msg = message.message

    mail( :email => @email, :name => @name, :mobile_no => @mobile_no, :address => @address, :message    =>  @msg )

  end

end
