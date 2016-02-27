class Classroom < ActiveRecord::Base
  belongs_to :person , polymorphic: true
  belongs_to :course
  accepts_nested_attributes_for :person
  validates_uniqueness_of :person_id , scope: [:course_id , :person_type]
end
