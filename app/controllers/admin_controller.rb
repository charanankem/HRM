class AdminController < ApplicationController
  def new
    @leaves = Leave.new
  end
  def create
    @leaves= Leave.new(leavesparams)
    @leaves.save
    #render plain: @leaves.errors.inspect
    redirect_to adminhome_path
  end
  def leavesparams
    params.permit(:name , :description)
  end

  def employeemanagement
    @employees=Employee.all
  end
  def adminhome
    @leave = Leave.all
  end
end