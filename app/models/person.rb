class Person < ApplicationRecord

  validates :age, numericality: {
    less_than_or_equal_to: 150
  }

  validates :name, :age, :alive, :gender, presence: true

  def self.order_by_age
    order(:age)
  end

  before_save :set_alive

  def set_alive
    self.alive = true
  end

end


 




  

