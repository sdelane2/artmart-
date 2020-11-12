class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  
    render :new
  end

  def create
    @appointment = Appointment.create(appt_params)
    if @appointment.valid?
      redirect_to user_path(@current_user)
    else
      flash[:appt_errors] = @appointment.errors.full_messages
      redirect_to new_appointment_path
    end
  end


  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(appointment_params)
        redirect_to appointment_path(@appointment)
    else
        flash[:appointment_errors] = @appointment.errors.full_messages
        redirect_to edit_appointment_path
    end
  end

  def destroy
      @appointment = Appointment.find(params[:id])
      if @appointment.valid?
          @appointment.destroy
          redirect_to user_path(@appointment.user)
      end
  end

  
    private
  
    def appt_params
      params.require(:appointment).permit(:artwork_id, :user_id, :date, :time)
    end

end