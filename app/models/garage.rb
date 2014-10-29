class Garage < ActiveRecord::Base
  belongs_to :company
  has_many :cars
end
