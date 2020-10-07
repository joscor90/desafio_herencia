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
    attr_reader ::location, :purpose, :hour, :min, :day
    def initialize(location, purpose, hour, min, day)
        super(location, purpose, hour, min)
        @day = day
    end

    def occurs_on?(day)
        self.day == day
    end

    def to_s
        puts "Reunión mensual en #{location} sobre #{purpose} el día #{day} a las #{hour}:#{min}"
    end
end

class DailyAppointment < Appointment
    
end

class OneTimeAppointment < Appointment
end