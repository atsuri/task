class TopController < ApplicationController
  def index
    @today = Date.today #が今日
    @tomorrow = @today.tomorrow.tomorrow #が明後日
    @tasks = Taskmanagement.where(limit: @today..@tomorrow)
  end
end
