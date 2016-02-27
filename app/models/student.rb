class Student < ActiveRecord::Base
    attachment :image
    validates :name ,presence: true
    validates :register_number , uniqueness: true , numericality: true
    validates :status , numericality: true
    has_many :classrooms ,as: :person , dependent: :destroy
    has_many :courses,   through: :classrooms 
end
