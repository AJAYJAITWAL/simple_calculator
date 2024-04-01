require "simple_calculator/version"
require 'matrix'
require 'cmath'

module SimpleCalculator
  def self.sum(x, y)
    x + y
  end

  def self.sub(x, y)
    x - y
  end

  def self.mul(x, y)
    x * y
  end

  def self.div(x, y)
    x / y
  end

  def self.exponentiate(base, exponent)
    base**exponent
  end

  def self.square_root(num)
    Math.sqrt(num)
  end

  def self.cube_root(number)
    number**(1.0/3)
  end
  
  def self.nth_root(number, n)
    number**(1.0/n)
  end

  def self.matrix_add(matrix_a, matrix_b)
    Matrix[*matrix_a] + Matrix[*matrix_b]
  end

  def self.matrix_subtract(matrix_a, matrix_b)
    Matrix[*matrix_a] - Matrix[*matrix_b]
  end

  def self.matrix_multiply(matrix_a, matrix_b)
    Matrix[*matrix_a] * Matrix[*matrix_b]
  end

  def self.matrix_inverse(matrix)
    Matrix[*matrix].inverse
  end

  def self.factorial(number)
    (1..number).reduce(:*) || 1
  end

  def self.percentage(number, percentage)
    (number * percentage) / 100.0
  end
  
  def self.square(number)
    number**2
  end
  
  def self.cube(number)
    number**3
  end
  
  def self.sin(angle_degrees)
    angle_radians = angle_degrees * Math::PI / 180
    Math.sin(angle_radians)
  end
  
  def self.cos(angle_degrees)
    angle_radians = angle_degrees * Math::PI / 180
    Math.cos(angle_radians)
  end
  
  def self.tan(angle_degrees)
    angle_radians = angle_degrees * Math::PI / 180
    Math.tan(angle_radians)
  end  
end
