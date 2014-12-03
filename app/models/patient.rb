class Patient < ActiveRecord::Base
  has_many :patient_prescriptions
  has_many :prescriptions, through: :patient_prescriptions
  has_many :diagnoses, through: :patient_prescriptions

  validates :sex, :age, presence: true
  validates_length_of :name, :complaints, :center, :history, minimum: 2, maximum: 140, allow_blank: true
end
