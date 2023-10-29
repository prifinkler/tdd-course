class Calculator
  def self.add(num1, num2)
    num1 + num2
  end

  def self.substract(num1, num2)
    num1 - num2
  end

  def self.multiply(num1, num2)
    num1 * num2
  end

  def self.divide(num1, num2)
    num1.to_f / num2
  end

  def self.exp(num1, num2)
    num1 ** num2
  end
end
