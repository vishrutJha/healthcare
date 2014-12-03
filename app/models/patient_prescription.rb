class PatientPrescription < ActiveRecord::Base
  belongs_to :patient
  belongs_to :prescription
  belongs_to :diagnosis
end
