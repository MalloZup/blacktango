defmodule Blacktango.CLI do
  def main(args \\ []) do
    args
    |> parse_args
    |> process
    
    # todo: if word like `blacktango github sniff` this will sniff for old issue older
    # implement this 1st cli and remove this general poc
    Github.issues()
  end

  defp parse_args(args) do
    {opts, word, _} =
      args
      |> OptionParser.parse(switches: [upcase: :boolean])

    {opts, List.to_string(word)}
  end

  defp process({opts, word}) do
    if opts[:upcase], do: String.upcase(word), else: word
  end
end
