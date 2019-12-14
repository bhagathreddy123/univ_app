class Course < ApplicationRecord
  validates :name, presence: true, length: {minimum: 4, maximum: 10}
end