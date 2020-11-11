# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    if name_hash.empty?
        return nil
    else
        min_value = nil
        min_key = nil
        name_hash.each do |key, value|
            if min_value == nil # if no number to compare to, set as lowest
                min_value = value
                min_key = key
            elsif min_value > value #compare new value to min_value if lower, set new minvalue, key
                min_value = value
                min_key = key
            end
        end
        return min_key
    end
end