class RoadmapsController < ApplicationController
  def show
    @roadmap = Roadmap.last
  end

  def new

  end

  def create
    @roadmap = Roadmap.new(roadmap_params)
    if @roadmap.save
      redirect_to :action => 'show', success: 'Now you are even more awesome!'
    else
      redirect_to :action => 'new', alert: 'Something went wrong..'
    end
  end
end

private

def roadmap_params
  params.require(:roadmap).permit(
    :the_one_thing, :the_why_of_one_thing, :the_one_habit, :start_date
  )
end