cts:search(fn:doc(), cts:and-query((
  cts:period-range-query(
    "valid",
    "ALN_CONTAINED_BY",
    cts:period(xs:dateTime("2016-01-08T00:00:00"),
               xs:dateTime("2016-01-09T23:59:59.99Z"))),
    cts:period-range-query(
    "system",
    "ALN_CONTAINED_BY",
    cts:period(xs:dateTime("2016-01-13T13:00:00"),
    xs:dateTime("2016-01-14T23:59:59.99Z"))
  )
)))
