class DesignationController < ApplicationController
  def new
    @designations = Designation.new
  end
  def create
    @designations= Designation.new(designationsparams)
    @designations.save
    render plain: @designations.errors.inspect
    #redirect_to designation_path
    redirect_to designationmanagement_path
  end
  def designationsparams
    params.permit(:name , :description)
  end

  def designationmanagement
    @designations = Designation.all
  end
end
