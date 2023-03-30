class Admin::HomesController < ApplicationController
  def top
    @overtimes = Overtime.all
  end

  def revise
  end
end
