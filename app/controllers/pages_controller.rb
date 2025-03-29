class PagesController < ApplicationController
  def dashboard
    @bookings = Booking.where(user: current_user)
    @cowerkings = Cowerking.where(user: current_user)
  end
end
