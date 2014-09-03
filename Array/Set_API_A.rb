require 'ap'

#use Array function

class Program_Run_Set

  ap [].class.instance_methods(false)

  mem1 = 0..127

  mem2 = %w{ lazy dog jumped over quick brown fox} #string set


  mem3 = mem1.map { |x| x.chr } # map

  ap mem1.max

  ap [mem3.max, mem3.min] #max  min

  ap mem1.select { |x| x %2==0 } #select

  ap (mem3.grep(/[\x00-\x7F]/)).select { |x| x =~/[\000-~]/ } #perl [ -~] work but ruby not  fix through \x \000

  ap mem3.map { |x| x.gsub(/[\x00-\x7F]/) { |y| y.ord } }

  ap %x(ls)

  ap "lazy dog jumped over quick brown fox".split(' ') #use split easy get array object

  p mem2.size #??


  p 'ruby has many verb operator set eg: select add select uniq first find'

  ap mem3.collect { |x| x.ord }

  p "perl own very useful toolkit 'pack' 'unpack' ruby also own same "


  ap mem3.collect { |x| x.unpack('C')[0] }

  p "see some thing"

  mem2.each_index { |x| p mem2[x] if x %2 ==0 }


  p "stack operator"

  # ap  mem2.pop

  p "query operator"

  ap mem2.rotate

  ap mem2.unshift("dog")

  p "has some stuff"

  ap [1, 2, 3].zip([4, 5, 6]).flatten


end