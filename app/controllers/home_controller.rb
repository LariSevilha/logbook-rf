class HomeController < ApplicationController
  def index
    @trainings = Training.all.page(params[:page]).per(5)
  end
end
