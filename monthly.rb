require_relative 'appoinment'

class MonthlyAppointment < Appointment
  attr_accessor :day
  
  def initialize(location, purpose, hour, min, day)
    @day = day
    super(location, purpose, hour, min)
  end

  def occurs_on?(day)
    @day == day
  end

  def to_s
    "Reunion mensual en #{location} sobre #{purpose}a las #{hour} horas, con #{min}minutos"
  end
end