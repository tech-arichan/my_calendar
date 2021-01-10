class OverallSchedulesController < ApplicationController
  def index
    @overall_schedules = OverallSchedule.all 
  end

  def new
    @overall_schedule = OverallSchedule.new
  end

  def create
    OverallSchedule.create(OverallSchedule_parameter)
    redirect_to root_path
  end

  private

  def event_parameter
    params.require(:OverallSchedule).permit(:title, :content, :start_time)
  end
end
