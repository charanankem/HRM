class ProjectController < ApplicationController
  def new
    @project = Project.new
  end
  def create
    @project = Project.new(projectsparams)
    @project.save
    #render plain: @project.errors.inspect
    redirect_to projectmanagement_path
  end
  
  def projectsparams
    params.permit(:project_name, :client, :manager_id, :description, :client_time_zone, :shift_information, :project_type)
  end

  def projectmanagement
    @projects = Project.all
  end

end
