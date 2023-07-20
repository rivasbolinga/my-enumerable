module Enumerable
  def initialize(arg)
    @arg = arg
  end

  def any?
    @arg.each do |n|
      return puts yield n if yield n
    end
    puts false
  end

  def all?
    values = []
    @arg.each do |n|
      values.push(yield n)
    end

    values.each do |n|
      return puts n if n != true
    end
    puts true
  end

  def filter
    values = []
    @arg.each do |n|
      values.push(n) if yield n
    end
    puts values
  end
end
