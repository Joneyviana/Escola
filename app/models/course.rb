class Course < ActiveRecord::Base
  has_many :classrooms
  has_many :students, through: :classrooms , source: :person , source_type: "Student"
  has_many :professors, through: :classrooms , source: :person , source_type: "Professor"
  validates :name ,presence: true , uniqueness: true
  validates :status , numericality: true

end
