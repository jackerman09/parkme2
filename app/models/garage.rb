class Garage < ActiveRecord::Base
  belongs_to :company
  has_many :cars
  has_many :appointments
end
