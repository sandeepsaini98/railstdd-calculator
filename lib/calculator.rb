class Calculator

  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def divide(a, b)
    if (b == 0)
      raise ZeroDivisionError
    else
      return a / b
    end
  end

  def modulus(a, b)
    a%b
  end

  def multiply(a,b)
    a * b
  end
end
