require 'twilio-ruby'

class UsersController < ApplicationController

  def new
    @user = User.new
  end

def create
    @user = User.new(params[:user])
    if @user.save
      render text: "Thank you for signing up to Text 2 Translate. You will receive
                    an SMS shortly with instructions on how you can use Text 2 Translate."

    #start twilio api here
    account_sid = 'AC9d1f6d5df9a54f0c995e4e51290f607b'
    auth_token = '3558e5064f7d10f92d75d45a6f3f1111'

   # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.sms.messages.create(
        #:from => '+14155992671',
        :from => '14155992671',
        :to => @user.phone,
        :body => "Text Spanish2'Text to translate' to translate from English to Spanish"
    )

    else
      render :new
    end
end

   def translate
   @message = params[:Body]
   render :text => "<Response><Sms> #{@message} </Sms></Response>", :content_type => "text/xml"
  end

end