class StudentsController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all

  
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @nota9a = @student.nota9a * 20.0 unless @student.nota9a == nil
    @nota10a = @student.nota10a * 20.0 unless @student.nota10a == nil
    @nota11a = @student.nota11a * 20.0 unless @student.nota11a == nil
    @nota9e = @student.nota9e  * 20.0 unless @student.nota9e == nil
    @nota10e = @student.nota10e * 20.0 unless @student.nota10e == nil
    @nota11e = @student.nota11e * 20.0 unless @student.nota11e == nil
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)
    
    @student.nota9a = @student.nota9a/20.0 unless @student.nota9a == nil
    @student.nota10a = @student.nota10a/20.0 unless @student.nota10a == nil
    @student.nota11a = @student.nota11a/20.0 unless @student.nota11a == nil
    @student.nota9e = @student.nota9e/20.0 unless @student.nota9e == nil
    @student.nota10e = @student.nota10e/20.0 unless @student.nota10e == nil
    @student.nota11e = @student.nota11e/20.0 unless @student.nota11e == nil

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:identificacion, :nombre, :institution_id, :nota9a, :nota9e, :nota10a, :nota10e, :nota11a, :nota11e, :icfes)
    end
end
