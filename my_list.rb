require './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end
  my_list = MyList.new(1, 2, 3, 4)
  puts my_list.all? { |e| e > 5 }
  puts my_list.any? { |e| e < 5 }
  puts my_list.any? {|e| e == 5}
  print my_list.filter { |e| e.even? }