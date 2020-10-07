class Appointment
    attr_reader :location, :purpose, :hour, :min
    def initialize(location, purpose, hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end
end

class MonthlyAppointment < Appointment
    attr_reader :location, :purpose, :hour, :min, :day
    def initialize(location, purpose, hour, min, day)
        super(location, purpose, hour, min)
        @day = day
    end

    def occurs_on?(day)
        self.day == day
    end

    def to_s
        "Reunión mensual en #{self.location} sobre #{self.purpose} el día #{self.day} a las #{self.hour}:#{self.min}."
    end
end

class DailyAppointment < Appointment
    def occurs_on?(hour, min)
        self.hour == hour && self.min == min
    end

    def to_s
        "Reunión diaria en #{self.location} sobre #{self.purpose} a la(s) #{self.hour}:#{self.min}."
    end
end

class OneTimeAppointment < Appointment
    attr_reader :location, :purpose, :hour, :min, :day, :month, :year
    def initialize(location, purpose, hour, min, day, month, year)
        super(location, purpose, hour, min)
        @day = day
        @month = month
        @year = year
    end

    def occurs_on?(day, month, year)
        self.day == day && self.month == month && self.year = year
    end

    def to_s
        "Reunión única en #{self.location} sobre #{self.purpose} el #{self.day}/#{self.month}/#{self.year} a la(s) #{self.hour}:#{self.min}."
    end
end

#testing all classes

puts MonthlyAppointment.new('Desafío Latam', 'OOP', 4, 7, 30)
puts DailyAppointment.new('Desafio Latam', 'Bases de Datos', 7, 30)
puts OneTimeAppointment.new('Desafio Latam', 'Módulos y Mixins', 7, 30, 8, 10, 2020)

