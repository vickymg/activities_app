class ActivitiesController < ApplicationController

  def new
    @activities = Activity.all
    @member = Member.find(params[:member_id])
    @activity = Activity.new
  end

  def create
    @member = Member.find(params[:member_id])
    @member.activities.create(activity_params)
    if @member.save
      redirect_to member_path(@member)
    else
      render 'new'
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:description)
  end

end
