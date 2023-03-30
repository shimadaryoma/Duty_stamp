class Admin::OvertimesController < ApplicationController
  def index
  end

  def show
    @overtime = Overtime.find(params[:id])
  end

  def update
    @overtime = Overtime.find(params[:id])
    @overtime.admit_status = true
    if @overtime.save
      redirect_to admin_stamps_fix_finish_path
    end
  end

  private
  def overtime_params
      params.require(:overtime).permit(:overtime_start_month, :overtime_start_day, :overtime_start_hour, :overtime_start_minute,
        :overtime_finish_month, :overtime_finish_day, :overtime_finish_hour, :overtime_finish_minute, :overtime_request, :enployee_id)
  end
end
