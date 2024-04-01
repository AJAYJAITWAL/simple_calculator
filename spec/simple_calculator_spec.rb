require 'matrix'
require 'cmath'

RSpec.describe SimpleCalculator do
  describe '.add' do
    it 'adds two numbers' do
      expect(SimpleCalculator.sum(2, 3)).to eq(5)
    end
  end

  describe '.subtract' do
    it 'subtracts two numbers' do
      expect(SimpleCalculator.sub(10, 3)).to eq(7)
    end
  end

  describe '.multiply' do
    it 'multiplies two numbers' do
      expect(SimpleCalculator.mul(4, 5)).to eq(20)
    end
  end

  describe '.divide' do
    it 'divides two numbers' do
      expect(SimpleCalculator.div(20, 4)).to eq(5)
    end

    it 'raises ArgumentError when dividing by zero' do
      expect { SimpleCalculator.div(10) }.to raise_error(ArgumentError)
    end
  end

  describe '.exponentiate' do
    it 'raises a number to a power' do
      expect(SimpleCalculator.exponentiate(2, 3)).to eq(8)
    end
  end

  describe '.square_root' do
    it 'calculates the square root of a number' do
      expect(SimpleCalculator.square_root(25)).to eq(5.0)
    end
  end

  describe '.cube_root' do
    it 'calculates the cube root of a number correctly' do
      expect(SimpleCalculator.cube_root(27)).to eq(3)
      expect(SimpleCalculator.cube_root(0)).to eq(0)
    end
  end

  describe '.nth_root' do
    it 'calculates the nth root of a number correctly' do
      expect(SimpleCalculator.nth_root(8, 3)).to eq(2)
      expect(SimpleCalculator.nth_root(16, 4)).to eq(2)
      expect(SimpleCalculator.nth_root(625, 4)).to eq(5)
    end

    it 'handles zero input' do
      expect(SimpleCalculator.nth_root(0, 5)).to eq(0)
    end
  end

  describe '.matrix_add' do
    it 'adds two matrices' do
      matrix_a = [[1, 2], [3, 4]]
      matrix_b = [[5, 6], [7, 8]]
      expect(SimpleCalculator.matrix_add(matrix_a, matrix_b)).to eq(Matrix[[6, 8], [10, 12]])
    end
  end

  describe '.matrix_subtract' do
    it 'subtracts two matrices' do
      matrix_a = [[1, 2], [3, 4]]
      matrix_b = [[5, 6], [7, 8]]
      result_matrix = SimpleCalculator.matrix_subtract(matrix_a, matrix_b)

      expected_result = Matrix[[-4, -4], [-4, -4]]

      expect(result_matrix).to eq(expected_result)
    end
  end

  describe '.matrix_multiply' do
    it 'multiplies two matrices' do
      matrix_a = [[1, 2], [3, 4]]
      matrix_b = [[5, 6], [7, 8]]
      expect(SimpleCalculator.matrix_multiply(matrix_a, matrix_b)).to eq(Matrix[[19, 22], [43, 50]])
    end
  end

  describe '.matrix_inverse' do
    it 'calculates the inverse of a matrix' do
      matrix = [[2, 3], [4, 5]]
      inverse_matrix = SimpleCalculator.matrix_inverse(matrix)

      expected_inverse = Matrix[[-5.0/2, 3.0/2], [2, -1]]

      expect(inverse_matrix).to eq(expected_inverse)
    end
  end

  describe '.factorial' do
    context 'when the input is a positive integer' do
      it 'calculates the factorial correctly' do
        expect(SimpleCalculator.factorial(5)).to eq(120)
        expect(SimpleCalculator.factorial(10)).to eq(3628800)
        expect(SimpleCalculator.factorial(0)).to eq(1)
      end
    end
  end

  describe '.percentage' do
    it 'calculates the percentage of a number correctly' do
      expect(SimpleCalculator.percentage(100, 10)).to eq(10.0)
      expect(SimpleCalculator.percentage(50, 20)).to eq(10.0)
      expect(SimpleCalculator.percentage(200, 25)).to eq(50.0)
    end

    it 'handles zero input' do
      expect(SimpleCalculator.percentage(0, 50)).to eq(0.0)
    end

    it 'handles negative percentage' do
      expect(SimpleCalculator.percentage(100, -10)).to eq(-10.0)
    end
  end

  describe '.square' do
    it 'calculates the square of a number correctly' do
      expect(SimpleCalculator.square(5)).to eq(25)
      expect(SimpleCalculator.square(-4)).to eq(16)
      expect(SimpleCalculator.square(0)).to eq(0)
    end
  end

  describe '.cube' do
    it 'calculates the cube of a number correctly' do
      expect(SimpleCalculator.cube(3)).to eq(27)
      expect(SimpleCalculator.cube(-2)).to eq(-8)
      expect(SimpleCalculator.cube(0)).to eq(0)
    end
  end

  describe '.sin' do
    it 'calculates the sine of an angle in degrees correctly' do
      expect(SimpleCalculator.sin(0)).to be_within(0.000001).of(0)
      expect(SimpleCalculator.sin(30)).to be_within(0.000001).of(0.5)
      expect(SimpleCalculator.sin(45)).to be_within(0.000001).of(Math.sqrt(2) / 2)
      expect(SimpleCalculator.sin(60)).to be_within(0.000001).of(Math.sqrt(3) / 2)
      expect(SimpleCalculator.sin(90)).to be_within(0.000001).of(1)
    end
  end

  describe '.cos' do
    it 'calculates the cosine of an angle in degrees correctly' do
      expect(SimpleCalculator.cos(0)).to be_within(0.000001).of(1)
      expect(SimpleCalculator.cos(60)).to be_within(0.000001).of(0.5)
      expect(SimpleCalculator.cos(90)).to be_within(0.000001).of(0)
    end
  end

  describe '.tan' do
    it 'calculates the tangent of an angle in degrees correctly' do
      expect(SimpleCalculator.tan(0)).to be_within(0.000001).of(0)
      expect(SimpleCalculator.tan(45)).to be_within(0.000001).of(1)
    end
  end
end
