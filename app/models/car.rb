class Car < ActiveRecord::Base
  belongs_to :garage
  belongs_to :user
  has_many :appointments
end
