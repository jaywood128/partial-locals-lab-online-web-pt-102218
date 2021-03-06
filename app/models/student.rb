# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'pry'
class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(student)
   
    if student == "" && student != "Roberta"
      @students = Student.all 
    else 
      @student = Student.where("name LIKE ?", "%#{student}%")
    end
  end 
end
