defmodule ListFilter do
  require Integer

  def call(list) do
    listWithOnlyNumberStrs = Enum.filter(list, fn item -> String.match?(item, ~r/^\d+$/) end)

    listWithParsedNumbers =
      Enum.map(listWithOnlyNumberStrs, fn numberStr -> String.to_integer(numberStr) end)

    listWithOnlyOddNumbers =
      Enum.filter(listWithParsedNumbers, fn item -> Integer.is_odd(item) end)

    Enum.count(listWithOnlyOddNumbers)
  end
end
