class Fizzbuzz01 # ファイル名とクラス名は一致させてください
  class << self
    # 副作用のないものはクラスメソッドにしたほうが良いと思います
    # 入力値があったほうが良いと思います
    def calc(n,m)
      fail TypeError unless n.is_a? Integer
      fail TypeError unless m.is_a? Integer

      n.upto(m).each do |num|
        if num % 15 == 0
          puts "FizzBuzz"
        elsif num % 5 == 0
          puts "Buzz"
        elsif num % 3 == 0
          puts "Fizz"
        else
          puts num
        end
      end
    end
  end
end
