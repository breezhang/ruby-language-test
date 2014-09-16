#use Array function
# y can use ap pp module format out message

class Array_some_op

  attr_accessor :mem1,:mem2,:mem3

  def  initialize

    @mem3 = mem1.map { |x| x.chr } # map
    @mem2 = %w{ lazy dog jumped over quick brown fox} #string set
    @mem1 = *(0..127) ||(0..127).to_a||(0..127).to_ary || Array(0..127) # Range to Array

  end

  # asterisk parameters in Ruby is splat operator

  def  array_has_max_method?
    [@mem1.max,@mem2.max,@mem3.max]
  end

  def  array_has_filter_methods?
    {
      :select_result =>@mem1.select{|x| x%2 ==0},
      :group_method  =>(@mem3.grep(/[\x00-\x7F]/)).select { |x| x =~/[\000-~]/ },
      :map           => @mem3.map { |x| x.gsub(/[\x00-\x7F]/) { |y| y.ord } }

    }
  end
end


