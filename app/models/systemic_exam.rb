class SystemicExam < ActiveRecord::Base
  belongs_to :RespiratorySystem
  belongs_to :GastroIntestinalSystem
  belongs_to :CardioVascularSystem
  belongs_to :NervousSystem
  belongs_to :Eye
  belongs_to :ENT
  belongs_to :Skin
  belongs_to :GenitoUrinalSystem
  belongs_to :MusculoSkeletalSystem
end
