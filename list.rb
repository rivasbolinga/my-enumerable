require_relative 'enumerable'

# 1. Create a class MyList that has an instance variable @list.

class MyList
  include Enumerable
  def initialize(*arg)
    @list = arg
    super(@list)
  end

  def each(&block)
    @list.each(&block)
  end
end

# 2. In MyList implement a method #each that yields successive members of @list and uses the MyEnumerable module.

list = MyList.new(1, 2, 3, 4)

# Test #all?
list.all? { |e| e < 5 }
# true
list.all? { |e| e > 5 }
# false

list.any? { |e| e == 2 }
# true
list.any? { |e| e == 5 }
# false

list.filter(&:even?)
#=> [2, 4]
