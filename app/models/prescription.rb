class Prescription < ActiveRecord::Base
  has_many :drugs
end
