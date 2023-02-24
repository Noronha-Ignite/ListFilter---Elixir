defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "Should return 0 with a empty list" do
      response = ListFilter.call([])
      expected = 0

      assert response == expected
    end

    test "Should return the number of odd numbers in a list" do
      responseOne = ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"])
      expectedOne = 3
      responseTwo = ListFilter.call(["1", "43", "banana", "6", "abc"])
      expectedTwo = 2
      responseThree = ListFilter.call(["1", "4", ":ok", "12", "11"])
      expectedThree = 2

      assert responseOne == expectedOne
      assert responseTwo == expectedTwo
      assert responseThree == expectedThree
    end
  end
end
