let $me := doc("/driver.xml")/driver
for $match in cts:search(
  /passenger,
  cts:and-query((
    cts:query($me/preferences/*),
    cts:reverse-query($me)
  ))
)
return base-uri($match)
