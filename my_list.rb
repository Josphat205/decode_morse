require './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each()
    @list.length.times { |i| yield @list[i] }
  end
end
