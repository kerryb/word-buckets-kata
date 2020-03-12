defmodule WordBuckets do
  def bucketize(text, bucket_size) do
    if text =~ ~r/\S{#{bucket_size + 1}}/ do
      # at least one word won't fit
      []
    else
      # an extended regex, with comments … almost readable!
      ~r"""
      (?=\S) # zero-width assertion that the next character isn't whitespace
      (
        # capture as many characters as we can up to the bucket size
        .{1,#{bucket_size}}
      )
      # the next two lines combine to make sure our capture goes to the end of a word
      (?<=\S) # zero-width assertion that the previous character wasn't whitespace
      \b # group has to end at a word boundary
      """x
      |> Regex.scan(text, capture: :all_but_first)
      |> List.flatten()
    end
  end
end
