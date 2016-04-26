let $author-ids := cts:element-values(
  xs:QName("author-id"), "", (),
  cts:and-query((
    cts:collection-query("authors"),
    cts:element-range-query(
      xs:QName("signup-date"), "<=",
        current-dateTime() - xs:yearMonthDuration("P1Y")
))))
for $result in cts:search(/tweet,
  cts:and-query(( cts:collection-query("tweets"),
    "quick brown fox",
      cts:element-attribute-range-query(
        xs:QName("tweet"), xs:QName("author-id"),
          "=", $author-ids
        )
)))[1 to 10]
return string($result/body)
