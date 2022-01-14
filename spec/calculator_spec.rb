require 'calculator.rb'

# Calculator class tests
RSpec.describe Calculator do
  calc = Calculator.new

  it 'creates a calculator class' do
    expect(calc).to be_kind_of(Calculator)
  end

  it 'return 14 when 5 and 9 are added' do
    expect(calc.add(5,9)).to be(14)
  end

  it 'returns 3 when -1 and 4 are added' do
    expect(calc.add(-1, 4)).to be(3)
  end

  it 'return 4 when 5 and -1 are added' do
    expect(calc.add(5,-1)).to be(4)
  end

  it 'returns 3 when 4 subtracted from 7' do
    expect(calc.subtract(7, 4)).to be(3)
  end

  it 'returns -6 when 3 subtracted from -3' do
    expect(calc.subtract(-3,3)).to be(-6)
  end

  it 'returns 0 when 3 subracted from 3' do
    expect(calc.subtract(3, 3)).to be(0)
  end

  it 'returns 3 when 6 is divided by 2' do
    expect(calc.divide(6,2)).to be(3)
  end

  it 'returns -1 when 6 divided by -6' do
    expect(calc.divide(6, -6)).to be(-1)
  end

  it 'returns 3.2 when 6.4 divided by 2' do
    expect(calc.divide(6.4, 2)).to be(3.2)
  end

  it 'raises Zero division error exception when divided by zero' do
    expect{calc.divide(3, 0)}.to raise_error(ZeroDivisionError)
  end

  it 'returns 1 when 3 modulus 2' do
    expect(calc.modulus(3, 2)).to be(1)
  end

  it 'returns 3 when 17 modulus 7' do
    expect(calc.modulus(17, 7)).to be(3)
  end

  it 'returns 2 when 15 is divided by 13' do
    expect(calc.modulus(15,13)).to be(2)
  end

  it 'returns 6 if 2 is multiplied by 3' do
    expect(calc.multiply(2,3)).to be(6)
  end


  it 'returns 0 if 2 is multiplied by 0' do
    expect(calc.multiply(2,0)).to be(0)
  end

  it 'returns 1.5 when 3 * 1/2' do
    expect(calc.multiply(3, 1/2)).to be(0)
  end
end