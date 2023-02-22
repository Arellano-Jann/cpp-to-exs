defmodule WordSorter do
  def getSortedWords(file_path) when length(file_path) == 1 do
    case File.read(file_path) do
      {:ok, words_in_file} ->
        String.split(words_in_file)
        |> Enum.sort
        |> Enum.join(" ")
        |> IO.puts()
      {:error, _} -> IO.puts("Error: Unable to open file #{file_path}")
    end
  end

  def getSortedWords(_) do
    IO.puts("Error: Invalid number of arguments.")
    IO.puts("Usage: elixir solution.exs <file_path>")
  end
end

# ["one", "three", "add", "money", "talk", "whatever", "bee"]
System.argv()
# |> IO.inspect()
|> WordSorter.getSortedWords()
