class Diagnosis < ActiveRecord::Base
  has_and_belongs_to_many :drugs

  validates_length_of :name, minimum: 2, maximum: 140, allow_blank: false
end
