class CalendarsController < ApplicationController
  before_action :authenticate_user!, :only => [:new]

  def index
    @reservations = Reservation.all
  end
end
