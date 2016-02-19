class Classroom < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
  accepts_nested_attributes_for :student
  validates_uniqueness_of :student_id , :scope => :course_id
end
