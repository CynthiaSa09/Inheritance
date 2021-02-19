require_relative 'appoinment'

class DailyAppointment < Appointment
  def occurs_on?(hour, min)
    @hour == hour and @min == min
  end

  def to_s
    "Reunion diaria en #{location} sobre #{purpose} a las #{hour} horas, con #{min} minutos"
  end

end