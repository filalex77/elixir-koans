defmodule Lists do
  use Koans

  @intro "Lists"

  koan "We can see what is ahead" do
    assert List.first([1, 2, 3]) == 1
  end

  koan "Checking what's trailing is also simple" do
    assert List.last([1, 2, 3]) == 3
  end

  koan "Lists can store anything you throw at them" do
    assert [1, 2] ++ [:a, "b"] == [1, 2, :a, "b"]
  end

  koan "Things can evolve" do
    assert [1, 2, 3] -- [3] == [1, 2]
  end

  koan "Evolution can have different forms" do
    assert List.delete([:a, :b, :c], :b) == [:a, :c]
  end

  koan "Precision is also valued" do
    assert List.delete_at([:a, :b, :c], 2) == [:a, :b]
  end

  koan "Replication is also possible" do
    assert List.duplicate("life", 3) == ~W[life life life]
  end

  koan "Sometimes leveling the playing field is desired" do
    assert List.flatten([1, [2, 3], 4, [5]]) == [1, 2, 3, 4, 5]
  end

  koan "Order can also be specified for new members" do
    assert List.insert_at([1, 2, 3], 1, 4) == [1, 4, 2, 3]
  end

  koan "We can replace things at specified positions" do
    assert List.replace_at([1, 2, 3], 0, 10) == [10, 2, 3]
  end

  koan "When a replacement cannot be found, the list remains the same" do
    assert List.replace_at([1, 2, 3], 10, 0) == [1, 2, 3]
  end

  koan "Order is bound by nature's laws" do
    assert List.insert_at([1, 2, 3], 10, 4) == [1, 2, 3, 4]
  end

  koan "Sometimes it's faster to loop around back" do
    assert List.insert_at([1, 2, 3], -1, 4) == [1, 2, 3, 4]
  end

  koan "We can also transform ourselves completely" do
    assert List.to_tuple([1, 2, 3]) == {1, 2, 3}
  end

  koan "Wrapping other values is a handy option" do
    assert List.wrap("value") == ["value"]
  end

  koan "Wrapping nothing produces a list of nothing" do
    assert List.wrap(nil) == []
  end

  koan "When there is already a list do not wrap it again" do
    assert List.wrap(["value"]) == ["value"]
  end
end
