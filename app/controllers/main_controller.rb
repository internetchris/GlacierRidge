class MainController < ApplicationController
  
  
  def send_booking_request
    flash[:notice] = "We have recieved your booking request and we will call you to confirm the details - Thank You!"
    BookingMailer.booking_email(params[:booking_request]).deliver
    redirect_to root_path
  end
end
