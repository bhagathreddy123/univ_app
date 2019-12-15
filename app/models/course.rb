class Course < ApplicationRecord
  validates :name, presence: true, length: {minimum: 4, maximum: 10}
  has_many :student_courses
  has_many :students, through: :student_courses
end