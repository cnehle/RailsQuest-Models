class Student < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments
  has_many :grades, through: :enrollments

  def average_grade
    res = grades.average(:score)
    # to_f
    if !res.nil?
      res.round(2)
    else
      0.0
    end
  end
end
