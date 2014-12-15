class Diagnosis < ActiveRecord::Base
  has_and_belongs_to_many :drugs
  has_many :stored_files, as: :storage, dependent: :destroy

  validates_length_of :name, minimum: 2, maximum: 140, allow_blank: false
end
