class AppointmentsController < ApplicationController

    def new
        @appointment = Appointment.new
    
        render :new
      end
    
      def create
        @appointment = Appointment.create(appt_params)
    
        redirect_to user_path(@appointment.user_id)
      end
    
      private
    
      def appt_params
        params.require(:appointment).permit(:artwork_id, :user_id, :date, :time)
      end

end