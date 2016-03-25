class CourseSerializer < ActiveModel::Serializer
  has_many :students
  has_many :professors
end
