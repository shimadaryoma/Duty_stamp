class Enployee::OvertimesController < ApplicationController
  before_action :authenticate_user, {only: [:new, :index]}
  before_action :ensure_enployee, only: [:new, :index]

  def new
    @overtime=Overtime.new
  end

  def create
    @overtime = Overtime.new(overtime_params)
    @overtime.enployee_id = current_enployee.id
    @overtime.admit_status = false
    if @overtime.save
       redirect_to overtimes_path, notice: "申請が完了しました"
    else
      redirect_to new_overtime_path, notice: "申請に失敗しました"
    end
  end

  def index
    @overtimes = Overtime.all
  end

  private
  def overtime_params
      params.require(:overtime).permit(:overtime_start_month, :overtime_start_day, :overtime_start_hour, :overtime_start_minute,
        :overtime_finish_month, :overtime_finish_day, :overtime_finish_hour, :overtime_finish_minute, :overtime_request, :enployee_id)
  end

  def ensure_user
    @enployee.id = current_enployee.id
    if @enployee != nil
      redirect_to new_admin_session_path
    end
  end
end
