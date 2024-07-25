class ReservationsController < ApplicationController

  def create
    reservation = Reservation.new(reservation_params)
    if reservation.save
      render json: reservation, status: :created
    else
      render json: { errors: reservation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:days, :adults, :infants, :start_date, :end_date, :days_in_makka, :days_in_madina, :room_id)
  end
end
