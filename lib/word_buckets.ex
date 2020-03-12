defmodule WordBuckets do
  def bucketize(text, bucket_size) do
    if text =~ ~r/\S{#{bucket_size + 1}}/ do
      []
    else
      ~r/(?=\S)(.{1,#{bucket_size}})(?<=\S)\b/
      |> Regex.scan(text, capture: :all_but_first)
      |> List.flatten()
    end
  end
end
