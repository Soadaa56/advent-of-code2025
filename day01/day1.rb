# f = File.open("test.txt", "r");
f = File.open("input.txt", "r");

dial = 50
password = 0

File.readlines(f).each do |line|
  if line[0] == 'L'
    dial -= line[1..].to_i
  else
    dial += line[1..].to_i
  end

  if dial % 100 == 0 
    password += 1
  end
end

puts password