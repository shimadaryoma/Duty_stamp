class Admin::EnployeesController < ApplicationController
  def index
    @enployees = Enployee.all
  end

  def show
    @enployee = Enployee.find(params[:id])
    @stamps= Stamp.all
  end

#
end
