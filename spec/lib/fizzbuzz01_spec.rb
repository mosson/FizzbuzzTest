require "spec_helper"
require "fizzbuzz01"

describe Fizzbuzz01 do
  context '引数が不正な場合' do
    it '引数がなければArgumentErrorをあげる' do
      expect { Fizzbuzz01.calc }.to raise_error ArgumentError
    end

    it '引数が整数でなければTypeErrorをあげる' do
      expect { Fizzbuzz01.calc 'a', 1 }.to raise_error TypeError
      expect { Fizzbuzz01.calc 1, 'a' }.to raise_error TypeError
    end
  end

  # 標準出力のテスト方法: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/output-matcher
  context '引数が正しい場合' do
    it 'nからmまで数字を増やしていき3で割り切れるときFizz、5で割り切れるときBuzz, 15で割り切れるときFizzBuzzを出力する' do
      expected = ['FizzBuzz', 1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', "Buzz\n"].join("\n")
      expect { Fizzbuzz01.calc(0,10) }.to output(expected).to_stdout
    end
  end
end

