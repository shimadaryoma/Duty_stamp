class Enployee::StampsController < ApplicationController
  def new
    @enployee=current_enployee
    @time =Time.now
    @stamp=Stamp.new
    @stamp_f = Stamp.last
  end

  def edit
    @stamp = Stamp.find(params[:id])
  end

  def create
    @stamp=Stamp.new
    @stamp.enployee_id=current_enployee.id
    if @stamp.save(work_start: Time.now)
      redirect_to new_stamp_path, notice: "打刻に成功しました"
    else
      render:new, notice: "打刻に失敗しました"
    end
  end

  def update
    @enployee = current_enployee
    @stamp = Stamp.find(params[:id])
    latest_stamp = Stamp.last
    if params[:stamp]
      @stamp.work_start = DateTime.new(@stamp.work_start.year,@stamp.work_start.month,@stamp.work_start.day,params[:stamp][:work_start_hour].to_i,params[:stamp][:work_start_minute].to_i,0,"+09:00")
      @stamp.work_finish = DateTime.new(@stamp.work_finish.year,@stamp.work_finish.month,@stamp.work_finish.day,params[:stamp][:work_finish_hour].to_i,params[:stamp][:work_finish_minute].to_i,0,"+09:00")
      @stamp.save
      redirect_to enployee_path(@enployee.id)
    elsif latest_stamp.update(work_finish: Time.now)
      redirect_to new_stamp_path, notice: "打刻に成功しました"
    else
      render:new, notice: "打刻に失敗しました"
    end
  end

  private
  def stamps_params
      params.require(:stamps).permit(:work_start, :work_finish)
  end

end
