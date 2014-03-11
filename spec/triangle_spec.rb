require 'rspec'
require 'triangle'

describe Triangle do
  it 'is initialized with 3 arguments (side1, side2, side3)' do
    test_triangle = Triangle.new(2,2,2)
    test_triangle.should be_an_instance_of Triangle
  end
end

describe Equilateral do
  it 'checks that all sides are equal' do
    test_equilateral =  Equilateral.new(2,2,2)
    test_equilateral.type_check.should eq true
  end
  it 'checks that all sides are equal' do
    test_equilateral =  Equilateral.new(2,3,4)
    test_equilateral.type_check.should eq false
  end
end

describe Scalene do
  it 'checks that none of the sides are equal' do
    test_scalene =  Scalene.new(2,3,4)
    test_scalene.type_check.should eq true
  end
  it 'checks that none of the sides are equal' do
    test_scalene =  Scalene.new(2,2,4)
    test_scalene.type_check.should eq false
  end
end

describe Isoceles do
  it 'checks that two sides are equal' do
    test_isoceles =  Isoceles.new(5,5,3)
    test_isoceles.type_check.should eq true
  end
  it 'checks that two sides are equal' do
    test_isoceles =  Isoceles.new(2,3,4)
    test_isoceles.type_check.should eq false
  end
end
