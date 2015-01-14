require "spec_helper"
require "fizzbuzz01"

describe Fizzbuzz01 do
  describe 'モジュールメソッド' do
    describe '#calc' do
      context '引数が不正な場合' do
        it '引数がなければArgumentErrorをあげる' do
          expect { described_class.calc }.to raise_error ArgumentError
        end

        it '引数が整数でなければTypeErrorをあげる' do
          expect { described_class.calc('a', 1) }.to raise_error TypeError
          expect { described_class.calc(1, 'a') }.to raise_error TypeError
        end
      end

      context '引数が正しい場合' do
        it 'nからmまでの数字を#distributeに渡す' do
          expect(described_class).to receive(:distribute).with(0)
          expect(described_class).to receive(:distribute).with(1)
          expect(described_class).to receive(:distribute).with(2)
          expect(described_class).to receive(:distribute).with(3)
          expect(described_class).not_to receive(:distribute).with(3)

          described_class.calc(0, 3)
        end
      end
    end

    describe '#distribute(num)' do
      context '引数が正しい場合' do
        context '3で割り切れるとき' do
          it 'puts_fizzを呼ぶ' do
            expect(described_class).not_to receive(:puts_fizz_buzz)
            expect(described_class).not_to receive(:puts_buzz)
            expect(described_class).not_to receive(:puts_num)
            expect(described_class).to receive(:puts_fizz)
            described_class.distribute(3)
          end
        end

        context '5で割り切れるとき' do
          it 'puts_buzzを呼ぶ' do
            expect(described_class).not_to receive(:puts_fizz_buzz)
            expect(described_class).not_to receive(:puts_fizz)
            expect(described_class).not_to receive(:puts_num)
            expect(described_class).to receive(:puts_buzz)
            described_class.distribute(5)
          end
        end

        context '15で割り切れるとき' do
          it '#puts_fizz_buzzを呼ぶ' do
            expect(described_class).not_to receive(:puts_fizz)
            expect(described_class).not_to receive(:puts_num)
            expect(described_class).not_to receive(:puts_buzz)
            expect(described_class).to receive(:puts_fizz_buzz)
            described_class.distribute(15)
          end
        end

        context 'いずれでもない場合' do
          it '#puts_numを呼ぶ' do
            expect(described_class).not_to receive(:puts_fizz)
            expect(described_class).not_to receive(:puts_buzz)
            expect(described_class).not_to receive(:puts_fizz_buzz)
            expect(described_class).to receive(:puts_num).with(2)
            described_class.distribute(2)
          end
        end
      end

      context '引数が正しくない場合' do
        it '引数が渡されない場合はTypeErrorをあげる' do
          expect { described_class.distribute }.to raise_error ArgumentError
        end
      end
    end

    describe '#puts_fizz_buzz' do
      it '標準出力にFizzBuzzを出力する' do
        expect { described_class.puts_fizz_buzz }.to output("FizzBuzz\n").to_stdout
      end
    end

    describe '#puts_buzz' do
      it '標準出力にBuzzを出力する' do
        expect { described_class.puts_buzz }.to output("Buzz\n").to_stdout
      end
    end

    describe '#puts_fizz' do
      it '標準出力にFizzを出力する' do
        expect { described_class.puts_fizz }.to output("Fizz\n").to_stdout
      end
    end

    describe '#puts_puts_num(num)'
    context '引数が正しい場合' do
      it '引数がない場合ArgumentErrorをあげる' do
        expect { described_class.puts_num }.to raise_error ArgumentError
      end
    end

    context '引数が正しくない場合' do
      it '標準出力に引数を出力する' do
        expect { described_class.puts_num(3) }.to output("3\n").to_stdout
      end
    end
  end
end
