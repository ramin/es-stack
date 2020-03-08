# es stack

## Running

`make` or `make env` to run it. This'll create a single node elasticsearch cluster of version 7.6.1, perfect for a deveoper to load with some test data and write some queries.

You can then visit [http://localhost:9200/](http://localhost:9200/) to get the elasticsearch API and start creating indicies and indexing documents.

Then

`make stop` to stop

# Starting from scratch

`make erase` or f you want to clear just the data, `make erase_data`
