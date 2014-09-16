gem 'minitest'

require 'minitest/autorun'

class Sample
  attr_accessor :num

  def initialize
    @num = 1+1
  end

end

describe 'do a test' do
  before do
    @mem = Sample.new
  end

  describe 'dome some demo show' do
    it 'wont be some stuff' do
      @mem.wont_be_nil
    end
  end

  describe 'do some basic test' do
    it 'plus 1+1' do
      @mem.num.must_equal 2
    end
  end

end