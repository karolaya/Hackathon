require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { icfes: @student.icfes, identificacion: @student.identificacion, institution_id: @student.institution_id, nombre: @student.nombre, nota10a: @student.nota10a, nota10e: @student.nota10e, nota11a: @student.nota11a, nota11e: @student.nota11e, nota9a: @student.nota9a, nota9e: @student.nota9e } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { icfes: @student.icfes, identificacion: @student.identificacion, institution_id: @student.institution_id, nombre: @student.nombre, nota10a: @student.nota10a, nota10e: @student.nota10e, nota11a: @student.nota11a, nota11e: @student.nota11e, nota9a: @student.nota9a, nota9e: @student.nota9e } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
