db.documents.read('/example.json').result(
  function(documents) {
    documents.forEach(function(document) {
      console.log( JSON.stringify(document) );
    });
  },
  function(error) {
    console.log( JSON.stringify(error) );
  }
);
