# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  array = []
  name_hash.collect do |key, value|
    value 
  end 
  while array.length > 1
    if array[0] < array[-1]
      array.pop
    elsif array[0] > array[-1]
      array.shift
    end
    min_value = array[0]
  end 
  min_value 
  name_hash.collect do |key, value|
    if value == min_value
      key
    end
  end 
end