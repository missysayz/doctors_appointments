class AppointmentsController < ApplicationController
  before_action :set_doctor
  before_action :set_appointment, only: [:destroy]
  
  def index
    @appointments = @doctor.appointments.all
  end

  def new
    @users = User.all
    @appointment = @doctor.appointments.new
  end

  def create
    @appointment = @doctor.appointments.new(appointment_params)
    if @appointment.save
      redirect_to @doctor
    else
      render :new
    end
  end

  def destroy
    @appointment.destroy
    redirect_to @doctor
  end

  private
  def set_doctor
    @doctor = Doctor.find(params[:doctor_id])
  end

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:date, :time, :user_id)
  end

end
