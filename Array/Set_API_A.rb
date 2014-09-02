require 'ap'

#use Array function

class Program_Run_Set

  ap [].class.instance_methods(false)

  mem1 = 0..127

  mem2 = %w{ cat sheep bear} #string set


  mem3 = mem1.map { |x| x.chr } # map

  ap mem1.max

  ap [mem3.max, mem3.min] #max  min

  ap mem1.select { |x| x %2==0 } #select

  ap (mem3.grep(/[\x00-\x7F]/)).select { |x| x =~/[\000-~]/ } #perl [ -~] work but ruby not \x \000


end