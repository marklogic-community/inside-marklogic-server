(: Register a query that includes all index.html page views from Firefox users :)
let $ff := cts:element-value-query(xs:QName("fact:brow"), "Firefox")
let $ff-sessions := cts:element-values(xs:QName("fact:s"), "", (), $ff)
let $registered :=
  cts:registered-query(cts:register(cts:and-query((
    cts:element-word-query(
      xs:QName("dim:url"), "index.html"),
      cts:element-range-query(xs:QName("dim:s"),
      "=",
      $ff-sessions)
) )
), "unfiltered")
(: Now for each day, count the hits that match the query. :)
for $day in ("2010-06-22", "2010-06-23", "2010-06-24")
let $query := cts:and-query((
  $registered,
  cts:element-value-query(
    xs:QName("dim:date"),
    xs:string($day)
  )
))
return concat(
  $day,
  ": ",
  xdmp:estimate(cts:search(/entry, $query))
)
