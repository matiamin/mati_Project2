# this is cool, I've never see this MailForm gem before, but it looks useful!
class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      # I might redirect to the root route (or simialar) at this point, and
      # ensure you display the flash in the  layout.html.erb, so it's visible
      # anywhere
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
