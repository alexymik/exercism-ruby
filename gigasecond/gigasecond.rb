class Gigasecond

  def initialize

  end

  def self.from(birthday)
    throw ArgumentError if birthday.class != Time
    birthday + 10 ** 9
  end
end

module BookKeeping
  VERSION = 5
end