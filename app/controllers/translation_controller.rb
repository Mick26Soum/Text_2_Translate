class TranslationController < ApplicationController

  def translate
   @message = params[:Body]
    render :text => "<Response><Sms> #{@message} </Sms></Response>", :content_type => "text/xml"
  end




end
