let $me := doc("/passenger.xml")/passenger
for $match in cts:search(
  /driver,
  cts:and-query((
    cts:query($me/preferences/*),
    cts:reverse-query($me)
  ))
)
return base-uri($match)
