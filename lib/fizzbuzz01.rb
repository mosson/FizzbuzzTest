module Fizzbuzz01

  module ModuleMethods
    def calc(n,m)
      fail TypeError unless n.is_a? Integer
      fail TypeError unless m.is_a? Integer
      n.upto(m).each { |num| distribute num }
    end

    def distribute(num)
      return puts_fizz_buzz if num % 15 == 0
      return puts_buzz if num % 5 == 0
      return puts_fizz if num % 3 == 0
      puts_num num
    end

    def puts_fizz_buzz
      puts 'FizzBuzz'
    end

    def puts_buzz
      puts 'Buzz'
    end

    def puts_fizz
      puts "Fizz"
    end

    def puts_num(num)
      puts num
    end
  end

  extend ModuleMethods
end
