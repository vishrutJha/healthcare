class Drug < ActiveRecord::Base
  has_and_belongs_to_many :diagnoses

  validates :name, presence: true
  validates_length_of :trade_name, :indication, :contra_indication, :dosage, :side_effect, minimum: 2, maximum: 140, allow_blank: true
end
