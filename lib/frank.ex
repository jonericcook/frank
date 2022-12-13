defmodule Frank do
  def greeting do
    if Frank.Doug.on?(:be_kind) do
      "hello there"
    else
      "go away"
    end
  end
end
