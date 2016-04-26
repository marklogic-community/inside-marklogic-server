(
  for $result in cts:search(/some/path, "some terms")
  order by $result/element-with-range-index
  return $result
)[1 to 10]
