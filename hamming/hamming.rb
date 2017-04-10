class Hamming

  def initialize

  end

  def self.compute(first, second)
    throw ArgumentError if first.length != second.length

    hamming_count = 0
    first_array = first.split('')
    second_array = second.split('')

    until first_array.empty?
      hamming_count += 1 if first_array.pop != second_array.pop
    end

    hamming_count
  end
end

module BookKeeping
  VERSION = 3
end