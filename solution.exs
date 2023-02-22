defmodule WordSorter do
  def getSortedWords(file_path) do
    case File.read(file_path) do
      {:ok, words_in_file} ->
        String.split(words_in_file)
        |> Enum.sort
        |> Enum.join(" ")
        |> IO.puts()
      {:error, _} -> IO.puts("Error: Unable to open file #{file_path}")
    end
  end
end

# ["one", "three", "add", "money", "talk", "whatever", "bee"]
System.argv()
# |> IO.inspect()
|> WordSorter.getSortedWords()
