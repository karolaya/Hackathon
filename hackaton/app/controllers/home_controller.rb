class HomeController < ApplicationController
	before_action :authenticate_admin!, only: [:statistics]

  def index
  end

  def statistics
  	@students = Student.all.order(:mean).limit(100)
    @institutions = Student.group(:institution_id).average(:icfes)
  end

  def testing
  	result = system("python /piti/scripty.py")
  	@pred = result.html_safe
  end
end
