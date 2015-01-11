class RunsController < ApplicationController
  def show
    @run = Run.find(params[:id])
  end

  def index
    @runs = Run.all
  end
end
