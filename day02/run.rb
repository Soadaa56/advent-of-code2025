file = File.open("input.txt", "r")
invalid_ids_summed = 0
step_one = []

buffer = IO::Buffer.map(file, nil, 0, IO::Buffer::READONLY)

id_range = buffer.get_string.split(',')

id_range.each do |range|
  start_range, end_range = range.split('-')

  (start_range..end_range).map { |i| 
    # Keep if even number of chars + make integer
    step_one << i.to_i if i.length % 2 == 0
  }

  step_one.each { |x|
    half_size = x.digits.length/2
    if x.digits[0..(half_size-1)] == x.digits[(half_size)..-1]
      invalid_ids_summed += x
    end
  }
end

puts invalid_ids_summed

# puts step_one