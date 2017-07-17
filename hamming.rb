# class Hamming
#   def self.compute (arg1, arg2)
#     if arg1 == arg2
#       0
#     elsif arg1 != arg2
#       1
#     elsif arg1 != arg2
#       2
#     end
#   end
# end


class Hamming
  def self.compute (arg1, arg2)
    if arg1 == arg2
      0
    elsif arg1.length != arg2.length
      raise ArgumentError
    else
      i = 0
      number = 0
      arg1 = arg1.split('')
      arg1.each do |n|
        if n != arg2[i]
          number += 1
        end
        i += 1
      end
      number
    end
  end
end


module BookKeeping
  VERSION = 3
end
