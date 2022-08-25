require './my_list'

def main()
  my_list = MyList.new(1, 2, 3, 4)
  puts(my_list.all?) { |e| e > 5 }
  puts(my_list.any?) { |e| e < 5 }
  puts(my_list.any?) { |e| e == 5 }
  print my_list.filter(&:even?)
end

main
