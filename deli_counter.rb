# Write your code here.
def line(deli_line)
  line_statement = ""
  if deli_line.count == 0
    puts "The line is currently empty."
  else
      deli_line.each do |customer|
        cust_num = customer.insert(0, " #{deli_line.index(customer)+1}. ")
        line_statement.concat(cust_num)
      end
      puts "The line is currently:#{line_statement}"
  end
end


def take_a_number(deli_line, name)
  deli_line.push(name)
  puts "Welcome, #{name}. You are number #{deli_line.index(name)+1} in line."
end

def now_serving(deli_line)
  if deli_line.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli_line[0]}."
    deli_line.shift
    deli_line
  end
end
