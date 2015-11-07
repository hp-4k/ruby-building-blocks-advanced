module Enumerable
  def my_each
    for element in self
      yield(element)
    end
  end
  
  def my_each_with_index
    i = 0
    for element in self
      yield(element, i)
      i += 1
    end
  end

  def my_select
    result = []
    self.my_each { |element| result << element if yield(element) }
    result
  end

  def my_all?
    result = true
    self.my_each { |element| result = false unless yield(element) }
    result
  end

  def my_any?
    result = false
    self.my_each { |element| result = true if yield(element) }
    result
  end

  def my_none?
    result = true
    self.my_each { |element| result = false if yield(element) }
    result
  end

  def my_count
    result = 0
    self.my_each { |element| result += 1 if yield(element) }
    result
  end

  def my_map(&block)
    result = []
    self.my_each { |element| result << block.call(element) }
    result
  end

  def my_inject(result)
    self.my_each { |element| result = yield(result,element) }
    result 
  end
end

def multiply_els(array)
  array.inject(1) { |result, element| result * element }
end
