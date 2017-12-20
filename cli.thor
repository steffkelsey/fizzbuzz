require './lib/formatter'

class FizzBuzzDemo < Thor
  desc 'zero_to_one_oh_one','FizzBuzz formats numbers from 0 to 101'
  def zero_to_one_oh_one
    puts 'FizzBuzz'
    formatter = Formatter.new
    new_line_cnt = 0
    101.times do |i|
      print "i:#{i.to_s.ljust(3, ' ')} formatted = #{(formatter.fizz_buzz i).ljust(8, ' ')} |  "
      new_line_cnt += 1
      if new_line_cnt > 2
        new_line_cnt = 0
        print "\n"
      end
    end
  end
end

