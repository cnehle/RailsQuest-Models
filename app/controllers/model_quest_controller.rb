class ModelQuestController < ApplicationController
  def step1; end

  def step2
    @students = Student.all
    @courses = Course.all
  end

  def step3
    @enrollments = Enrollment.all
  end

  def step4
    @students = Student.all
  end

  def step5
    @courses_groups = Course.select('title, count(student_id) as cnt')
                            .left_joins(:enrollments).group(:title).order(:cnt)
    # [{title: 'A', name: 3},...]
  end

  def final; end
end
