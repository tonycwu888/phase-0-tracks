def simple_print
  puts "before running block"
  yield (5)
  puts "after running block"
end

simple_print { |x| puts x * 3 }
