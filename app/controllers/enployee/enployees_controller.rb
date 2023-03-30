class Enployee::EnployeesController < ApplicationController
  before_action :authenticate_user, {only: [:show, :update]}
  before_action :ensure_user, only: [:show, :update]
  
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
  
  def ensure_user
    if current_enployee.id != nil
     redirect_to new_admin_session_path
    end
  end
end
