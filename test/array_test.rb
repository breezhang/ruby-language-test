gem  'minitest'

require "minitest/reporters"
Minitest::Reporters.use!
#Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
#Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new, Minitest::Reporters::JUnitReporter.new]
require  'minitest/autorun'


# let's start  some simple test code  for  minitest


#   test   object  
#


class  Foo
  attr_accessor :num

  def initialize
    @num =1

  end


  def  plus?
    @num +=1
  end

end





describe    'some simple test '   do 

  before   do
    @mem   =  Foo.new
  end

  describe   'must be '  do
    it   'simple test must be'   do
      @mem.must_be_instance_of Foo
    end

  end

  describe   'wont be'   do
    it  'simple wont must be'  do
      @mem.wont_be_nil
    end


    describe  'equment '  do

      it  'equment  some stuff' do

        @mem.plus?.must_equal 2

      end

    end

  end
end

