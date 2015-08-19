require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  validates : :name, uniqueness: true
  validates : :email, uniqueness: true


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