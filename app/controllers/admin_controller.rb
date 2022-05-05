class AdminController < ApplicationController
  def new
    @leaves = Leave.new
  end
  def create
    @leaves= Leave.new(leavesparams)
    @leaves.save
    render plain: @leaves.errors.inspect
  end
  def leavesparams
    params.permit(:name , :description)
  end

  def employeemanagement
    @employees=Employee.all
  end


  def new
    @designations = Designation.new
  end
  def create
    @designations= Designation.new(designationsparams)
    @designations.save
    render plain: @designations.errors.inspect
  end
  def designationsparams
    params.permit(:name , :description)
  end
  

end