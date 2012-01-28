class BookingMailer < ActionMailer::Base
  default :from => "glacierridgesuites@gmail.com"
  
  def booking_email(booking_request)
      @booking_request = booking_request
      mail(:to => (Rails.env == 'development' ? "internetchris1@gmail.com" : "chris@utilitygo.net"), :subject => "[New Booking] - Glacier Ridge Website")
    end
end
