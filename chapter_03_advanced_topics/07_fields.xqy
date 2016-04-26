let $elts := (xs:QName("atom:entry"), xs:QName("item"))
let $query := cts:element-word-query($elts, $text) ...

let $query := cts: eld-word-query("feeditem", $text)

cts:or-query((
  cts:element-word-query(xs:QName("author"), $text, (), 3.0),
  cts:element-word-query(xs:QName("title"), $text, (), 2.0),
  cts:element-word-query(xs:QName("abstract"), $text, (),
  0.5)
))

cts:field-word-query("metadata", $text)
