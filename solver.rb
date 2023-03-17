class Solver
  def self.factorial(num)
    raise ArgumentError, 'Argument must be non-negative' if num.negative?

    (1..num).reduce(1, :*)
  end

  def self.reverse(str)
    str.reverse
  end

  def self.fizzbuzz(num)
    if (num % 15).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
