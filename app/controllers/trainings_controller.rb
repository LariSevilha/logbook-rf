class TrainingsController < ApplicationController
  def index
    @trainings = Training.all.page(params[:page]).per(10)
  end
end
