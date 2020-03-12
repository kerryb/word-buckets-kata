defmodule WordBuckets do
  @doc """
  The following are executable doctests:

  ```
  iex> WordBuckets.bucketize("she sells sea shells by the sea", 10)
  ["she sells", "sea shells", "by the sea"]

  iex> WordBuckets.bucketize("the mouse jumped over the cheese", 7)
  ["the", "mouse", "jumped", "over", "the", "cheese"]

  iex> WordBuckets.bucketize("fairy dust coated the air", 20)
  ["fairy dust coated", "the air"]

  iex> WordBuckets.bucketize("a b c d e", 2)
  ["a", "b", "c", "d", "e"]

  iex> WordBuckets.bucketize("foo bar baz quz quux", 3)
  []
  ```
  """
  def bucketize(text, bucket_size) do
    []
  end
end
