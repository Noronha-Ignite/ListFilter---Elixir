defmodule ListFilter do
  require Integer

  def call(list) do
    filteredNumbers =
      list
      |> filterOnlyNumStrings()
      |> parseNumStringsToIntegers()
      |> filterOddNumbers()

    Enum.count(filteredNumbers)
  end

  defp filterOnlyNumStrings(list),
    do: Enum.filter(list, fn item -> String.match?(item, ~r/^\d+$/) end)

  defp parseNumStringsToIntegers(list),
    do: Enum.map(list, fn numberStr -> String.to_integer(numberStr) end)

  defp filterOddNumbers(list),
    do: Enum.filter(list, fn item -> Integer.is_odd(item) end)
end
