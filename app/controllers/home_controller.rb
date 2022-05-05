class HomeController < ApplicationController
  def index
  end
  def landing
    $name = full_name
    $pname = profile_name
  end
  def full_name
    user=Employee.find(current_employee.id)
    first_name = user.first_name
    last_name = user.last_name
    return first_name.capitalize+" "+last_name.capitalize
  end
  def profile_name
    user=Employee.find(current_employee.id)
    first_name = user.first_name
    last_name = user.last_name
    return first_name[0].capitalize+last_name[0].capitalize
  end

end
