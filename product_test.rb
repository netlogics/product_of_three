require 'minitest/autorun'
require 'minitest/byebug' if ENV['DEBUG']
require './product'

describe Product do
  describe '#calculate' do
    describe 'positive integers' do
      it "returns 120 given [6, 4, 5, 3, 1, 2]" do
        ints = [6, 4, 5, 3, 1, 2]
        Product.new.calculate(ints).must_equal 120
      end
    end

    describe 'negative integers' do
      it "returns 300 given two negative integers [−10, −10, 1, 3, 2]" do
        ints = [-10, -10, 1, 3, 2]
        Product.new.calculate(ints).must_equal 300
      end

      it "returns 300 given the two largest integers and 1 smallest are negative [−10, −10,- 1, 3, 2]" do
        ints = [-10, -10, -1, 3, 2]
        Product.new.calculate(ints).must_equal 300
      end

      it "returns 200 given the three largest integers are negative [−10, −10, 1, -3, 2]" do
        ints = [-10, -10, 1, -3, 2]
        Product.new.calculate(ints).must_equal 200
      end
    end
  end
end
