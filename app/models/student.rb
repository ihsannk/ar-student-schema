require_relative '../../db/config'

class Student < ActiveRecord::Base
  validates :email, uniqueness: true,format: { with: /\w+@\w+(.\w+)*(\.\w{2,})/ }
  validates :age, numericality: { greater_than_or_equal_to: 5 }
  validates :phone, format: { with: /.+\d{3}.+\d{3}.+\d{4}.+/ }

  def name
    "#{first_name} #{last_name}"
  end

  def age
    today = Date.today
    birthyear = self.birthday.year
    return today.year - birthyear - 1
  end


end