require 'ap'
require 'pp'

#use Array function

# y can use ap pp module format out message

class Program_Run_Set

  ap [].class.instance_methods(false)

  p "ruby has four std type"

  ap [1.class, "Hello Word".class, (1..2).class, /\w/.class]

  mem1 = *(0..127) ||(0..127).to_a||(0..127).to_ary || Array(0..127) # Range to Array

  # asterisk parameters in Ruby is splat operator

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

  ap [1, 2, 3].zip([4, 5, 6])

  pp [1, 2, 3].zip([4, 5, 6])


  p "almost every program language has slice function "

  ap mem2[1..3]

  p mem1.slice(4, 7)

 
end