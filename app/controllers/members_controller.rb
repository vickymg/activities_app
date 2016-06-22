class MembersController < ApplicationController

  helper_method :get_member_activities

  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to '/admin'
    else
      render 'new'
    end
  end

  def member_params
    params.require(:member).permit(:name)
  end

  def show
    @member = Member.find(params[:id])
  end

  def get_member_activities(id)
    @member = Member.find(id)
    @member_activities = []
    @member.activities.each do |activity|
      @member_activities << activity.name
    end
    @member_activities.uniq!
    @member_activities.to_sentence
  end

end
