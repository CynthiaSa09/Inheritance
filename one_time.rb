require_relative 'appoinment'

class OneTimeAppointment < Appointment
  attr_accessor :day, :month, :year
  def initialize(location, purpose, hour, min, day, month, year)
    super(location, purpose, hour, min)
    @month = month
    @year = year
  end
  def occurs_on?(day, month, year)
    @day == day && @month == month && @year == year
  end
  def to_s
    "Reunion unica en #{location} sobre #{purpose} a las #{hour} horas, con #{min} minutos"
  end

end