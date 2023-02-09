def func_any(hash)

   hash.any? { |key, value| key.is_a?(Integer) }

end

def func_all(hash)

   hash.all? { |_, value| value.is_a?(Integer) && value < 10 }

end

def func_none(hash)

  !hash.has_value?(nil)
end
def func_find(hash)
  hash.find do |key, value|
    (key.is_a?(Integer) && value.is_a?(Integer) && value < 20) ||
    (key.is_a?(String) && value.is_a?(String) && value.start_with?('a'))
  end
end
hash = {1 => 2, "hello" => "apple"}
puts func_any(hash)
puts func_all(hash)
puts func_none(hash)
puts func_find(hash)