class Patient < ActiveRecord::Base
  has_many :prescriptions
  has_many :diagnoses
end
