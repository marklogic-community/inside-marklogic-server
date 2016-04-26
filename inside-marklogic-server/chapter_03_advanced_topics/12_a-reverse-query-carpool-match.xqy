let $from := cts:point(37.751658,-121.898387) (: San Ramon :)
let $to := cts:point(37.507363, -122.247119) (: San Carlos :)
return xdmp:document-insert( "/driver.xml",
  <driver>
    <from>{$from}</from>
    <to>{$to}</to>
    <when>2010-01-20T08:00:00-08:00</when>
    <gender>female</gender>
    <smoke>no</smoke>
    <music>rock, pop, hip-hop</music>
    <cost>10</cost>
    <preferences>{
    cts:and-query((
      cts:element-value-query(
        xs:QName("gender"), "female"),
        cts:element-geospatial-query(xs:QName("from"),
        cts:circle(5, $from)),
        cts:element-geospatial-query(xs:QName("to"),
        cts:circle(5, $to))
    ))
  }</preferences>
</driver> )
