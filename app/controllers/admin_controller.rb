class AdminController < ApplicationController
  def index
    @members = Member.all
  end
end
