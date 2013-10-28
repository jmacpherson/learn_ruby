class Timer
  attr_accessor :seconds
  HOUR = 3600
  MINUTE = 60

  def initialize(seconds=0)
    @seconds = seconds
  end

  def time_string
    hours = (seconds / HOUR)
    @seconds = @seconds % HOUR
    minutes = (seconds / MINUTE)
    @seconds = @seconds % MINUTE
    # hours = "0#{hours}" if hours.length == 1
    # minutes = "0#{minutes}" if minutes.length == 1
    # seconds_s = "0#{seconds_s}" if seconds_s.length == 1
    return padded(hours) << ":" << padded(minutes) << ":" << padded(@seconds)
  end

  def padded(number)
    return "0#{number}" if number.to_s.length == 1
    return number.to_s
  end
end