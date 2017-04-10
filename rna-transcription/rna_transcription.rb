class InvalidNucleotideError < StandardError; end

class Complement
  def self.of_dna(dna_strand)
    string_to_array(dna_strand).inject('') do |rna_strand, nucleotide|
      begin
        rna_strand << dna_to_rna(nucleotide)
      rescue InvalidNucleotideError
        return ''
      end
    end
  end

  def self.string_to_array(string)
    string.split('')
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