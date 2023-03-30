class Admin::StampsController < ApplicationController
  def index
    @stamps = Stamp.all
  end

  def show
    @stamp = Stamp.find(params[:id])
  end

  def update
    @stamp = Stamp.find(params[:id])
    @stamp.fix_status = true
    if @stamp.save
      redirect_to admin_stamps_fix_finish_path
    else
      render:new, notice: "更新に失敗しました"
    end
  end

  def finish
    @stamp = nil
  end

  private
  def stamps_params
    params.require(:stamp).permit(:fix_status)
  end
end
