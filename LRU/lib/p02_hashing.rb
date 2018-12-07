class Fixnum
  # Fixnum#hash already implemented for you
end

class Array
  def hash
    sum = 0
    self.each_with_index do |el, idx|
      sum += (idx * el)
    end
    sum.hash
  end
end

class String
  def hash
    sum = 0
    self.chars.each_with_index do |el, idx|
      sum += (idx * el.ord)
    end
    sum.hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    sum = 0
    self.to_a.sort.each do |sub_arr|
      sub_arr.each_with_index do |el, idx|
        sum += (idx * el.to_s.ord)
      end
    end
    sum
  end
end
