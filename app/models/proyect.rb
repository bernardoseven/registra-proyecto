class Proyect < ActiveRecord::Base
  belongs_to :user
  has_many :registers
end
