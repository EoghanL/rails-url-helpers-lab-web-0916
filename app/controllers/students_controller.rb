class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    @st = set_student
    @st.active = !@st.active
    @st.save
    redirect_to student_path(@st)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
