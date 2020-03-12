# Word Buckets

Write a function that divides a phrase into word buckets, with each bucket
containing n or fewer characters. Only include full words inside each bucket.

## Examples

See doctests in `WordBuckets`.

## Notes

* Spaces count as one character.
* Trim beginning and end spaces for each word bucket (see final example).
* If buckets are too small to hold a single word, return an empty array: []
* The final goal isn't to return just the words with a length equal (or lower)
  to the given n, but to return the entire given phrase bucketized (if
  possible). So, for the specific case of "by" the only word with a proper
  length, the phrase can't be bucketized, and the returned array has to be
  empty.
