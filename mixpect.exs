{:ok, mix_file} = File.read("mix.exs")
{:ok, mixes} = Code.string_to_quoted(mix_file)
{:defmodule, _, [{_,_,_}, [do: {:__block__, _, all}]]} = mixes
{:defp, _, [{:deps, _, _}, [do: libs]]} = Enum.at(all, Enum.count(all)-1)
IO.inspect(libs)
