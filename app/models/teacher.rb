require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  validates : :name, uniqueness: true
  validates : :email, uniqueness: true
  has_many :students_teachers, :foreign_key => :teacher_id
  has_many :students, through: :students_teachers

  def name
    "#{name}"
  end

  def email
    "#{email}"
  end

  def phone
    "#{phone}"
  end


end