var tweet = fn.head(cts.search(
  "healthcare", cts.indexOrder(
    cts.jsonPropertyReference("created"),
    "descending"
  )
));
var params = {"id": tweet.toObject()['tweet-id']};
var followers = sem.sparql(' \
  SELECT ?follower \
  WHERE { \
    ?author <http://example.org/tweeted> $id. \
    ?follower <http://example.org/follows> ?author \
  }',
params );
