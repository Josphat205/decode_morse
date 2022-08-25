require_relative './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    return to_enum(:each) unless block_given?

    counter = 0
    while counter < @list.length
      yield(@list[counter])
      counter += 1
    end
    @list
  end
end

my_list = MyList.new(1, 2, 3, 4)

puts(my_list.all?) { |e| e > 5 }
puts(my_list.any?) { |e| e < 5 }
puts(my_list.any?) { |e| e == 5 }
print my_list.filter(&:even?)
print my_list.filter(&:odd?)
