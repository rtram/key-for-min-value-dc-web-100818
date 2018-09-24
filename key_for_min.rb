# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash != {} 
    array = []
    name_hash.collect do |key, value|
      array << value 
    end 
    while array.length > 1
      if array[0] < array[-1]
        array.pop
      elsif array[0] > array[-1]
        array.shift
      end
    end 
    array[0]
    name_hash.each do |key, value|
      if value == array[0]
        return key
      end 
    end 
  else 
    return nil
  end 
end