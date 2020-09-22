class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  attr_reader :doctor_name, :patient_name

  def doctor_name=(name)
    self.doctor = Doctor.find_or_create_by(name: name)
  end 

  def patient_name=(name)
    self.patient = Patient.find_or_create_by(name: name)
  end 
 

end
