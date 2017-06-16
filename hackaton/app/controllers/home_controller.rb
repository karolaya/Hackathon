class HomeController < ApplicationController
	before_action :authenticate_admin!, only: [:statistics]

  def index
  end

  def statistics
  	@students = Student.all.order(:mean).limit(100)
  end
end
