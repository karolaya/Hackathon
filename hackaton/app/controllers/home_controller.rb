class HomeController < ApplicationController
  def index
  end

  def statistics
  	@students = Student.all.order(:mean).limit(100)
  end
end
