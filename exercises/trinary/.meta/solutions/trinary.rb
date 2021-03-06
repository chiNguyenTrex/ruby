class Trinary
  BASE = 3

  attr_reader :digits
  def initialize(decimal)
    decimal = '0' unless decimal.match(/\A[012]+\z/)
    @digits = decimal.reverse.chars.collect(&:to_i)
  end

  def to_decimal
    decimal = 0
    digits.each_with_index do |digit, index|
      decimal += digit * BASE**index
    end
    decimal
  end
end

module BookKeeping
  VERSION = 1
end
