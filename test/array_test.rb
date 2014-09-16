gem  'minitest'

require "minitest/reporters"
Minitest::Reporters.use!
#Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
#Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new, Minitest::Reporters::JUnitReporter.new]
require  'minitest/autorun'


# let's start  some simple test code  for  minitest
#   test   object  
#

require  'Array/Set_API_A.rb'




describe    'some simple test '   do 

  before   do
    @mem   = Array_some_op.new

  end

  describe   'must be '  do
    it   'simple test must be'   do
      @mem.must_be_instance_of  Array_some_op
    end

  end

  describe   'wont be'   do
    it  'simple wont must be'  do
      @mem.wont_be_nil
    end


    describe  'equment '  do

      it  'equment  some stuff' do

      end

    end

  end
end

