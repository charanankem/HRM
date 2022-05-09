class HolidayController < ApplicationController
  def new
    @holidays = Holiday.new
  end
  def create
    @holidays = Holiday.new(holidaysparams)
    @holidays.save
    #render plain: @holidays.errors.inspect
    redirect_to holidaysmanagement_path
  end
  
  def holidaysparams
    params.permit(:name, :date, :year)
  end

  def holidaysmanagement
    @holidays = Holiday.all
  end
end
