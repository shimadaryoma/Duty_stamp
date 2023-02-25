class Enployee::EnployeesController < ApplicationController
  def show
    @enployee=Enployee.find(params[:id])
    @stamps=@enployee.stamps
    
  end

  def edit
  end

  private
  def enployee_params
    params.require(:enployee).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :id)
  end
end
