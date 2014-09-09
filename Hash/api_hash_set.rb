
def foo_hash
  attr_accessor :foo, :bar
  
  mem1 = {}
  mem2 = {:foo=>self}

  p mem2

  p self

  p "Hello World"

end






