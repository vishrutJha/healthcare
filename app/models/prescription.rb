class Prescription < ActiveRecord::Base
  has_and_belongs_to_many :drugs
end
