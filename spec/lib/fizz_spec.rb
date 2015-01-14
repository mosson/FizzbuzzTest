require "spec_helper"
require "fizzbuzz01"
require "fizzbuzz02"

describe Integer do

  context '3の倍数、5の倍数でもない' do
    it 'return num' do
      expect(1.to_fizz_buzz).to eq '1'
      expect(2.to_fizz_buzz).to eq '2'
      expect(4.to_fizz_buzz).to eq '4'
      expect(7.to_fizz_buzz).to eq '7'
    end
  end

  context '3の倍数のみ' do
    it 'return Fizz' do
      expect(3.to_fizz_buzz).to eq 'Fizz'
      expect(6.to_fizz_buzz).to eq 'Fizz'
      expect(9.to_fizz_buzz).to eq 'Fizz'
      expect(12.to_fizz_buzz).to eq 'Fizz'
    end
  end

  context '5の倍数のみ' do
    it 'return Buzz' do
      expect(5.to_fizz_buzz).to  eq 'Buzz'
      expect(10.to_fizz_buzz).to eq 'Buzz'
      expect(20.to_fizz_buzz).to eq 'Buzz'
      expect(25.to_fizz_buzz).to eq 'Buzz'
    end
  end

  context '15の倍数のみ(3と5の倍数)' do
    it 'return FizzBuzz' do
      expect(15.to_fizz_buzz).to eq 'FizzBuzz'
      expect(30.to_fizz_buzz).to eq 'FizzBuzz'
      expect(45.to_fizz_buzz).to eq 'FizzBuzz'
      expect(60.to_fizz_buzz).to eq 'FizzBuzz'
    end
  end

end

describe Fz01 do
  it "is include" do
    fz = Fz01.new
    expect(fz.calc).to include(1)
    expect(fz.calc).to include(2)
    expect(fz.calc).to include(3)
    expect(fz.calc).to include(99)
    expect(fz.calc).to include(100)
    expect(1.to_fizz_buzz).to include('1')
    expect(12.to_fizz_buzz).to include('Fizz')
    expect(25.to_fizz_buzz).to include('Buzz')
    expect(60.to_fizz_buzz).to include("FizzBuzz")
  end
end
