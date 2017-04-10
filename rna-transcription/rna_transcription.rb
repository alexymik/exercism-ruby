class InvalidNucleotideError < StandardError; end

class Complement
  def self.of_dna(dna_strand)
    rna_array = []

    string_to_array(dna_strand).each do |nucleotide|
      begin
        rna_array << dna_to_rna(nucleotide)
      rescue InvalidNucleotideError
        return ''
      end
    end

    array_to_string rna_array
  end

  def self.string_to_array(string)
    string.split('')
  end

  def self.array_to_string(array)
    array.join('')
  end

  def self.dna_to_rna(nucleotide)
    case nucleotide
      when 'G'
        'C'
      when 'C'
        'G'
      when 'T'
        'A'
      when 'A'
        'U'
      else
        raise InvalidNucleotideError
    end
  end
end

module BookKeeping
  VERSION = 4
end