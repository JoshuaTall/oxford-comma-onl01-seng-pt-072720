def oxford_comma(array)
  if array.size == 1
    array.first
  elsif array.size == 2
    array.insert(1, "and").join(" ")
  elsif array.size == 3
    array.last.insert(-10, "and ")
    array.join(", ")
  else array.size > 3
    array.join(", ") << ", and #{array[-1]}"
  end
end