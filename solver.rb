class Solver
  def self.factorial(number)
    raise ArgumentError, 'number must be non-negative' if number.negative?
​
    (1..number).reduce(1, :*)
  end
​
  def self.reverse(word)
    word.reverse
  end
​
  def self.fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end
