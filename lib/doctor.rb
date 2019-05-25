class Doctor
  
  @@all = []
  
  attr_accessor :name 
  
  def initialze(name)
    @name = name 
    @@all << self
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient)
  end
  
  def appointments
    Appointment.all.collect {|appointment| appointment.doctor == self}
  end
  
  def patients
    Appointment.all.collect do |appointment|
      if appointment.doctor == self
        appointment.patient
      end
    end
  end
  
end