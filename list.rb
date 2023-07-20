require_relative 'enumerable'

#1. Create a class MyList that has an instance variable @list.

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

# 2. In MyList implement a method #each that yields successive members of @list and uses the MyEnumerable module.

  def each(&block)
    @list.each(&block)
  end
end