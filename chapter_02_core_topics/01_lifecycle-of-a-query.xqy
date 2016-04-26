for $result in cts:search(
  /article[@year = 2010],
  cts:and-query((
    cts:element-word-query(
      xs:QName("description"),
      cts:word-query("pet grooming")
    ),
    cts:near-query(
      (cts:word-query("cat"), cts:word-query("puppy dog")), 10
    ),
    cts:not-query(
      cts:element-word-query(
        xs:QName("keyword"), cts:word-query(" sh")
      )
    )
)))[1 to 10]
return
<p>{
  <b>{ string($result/title) }</b>
  <i>{ string($result/@date }</i>
  (<small>{ cts:score($result) }</small>)
}</p>
