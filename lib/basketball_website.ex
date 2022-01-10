defmodule BasketballWebsite do
  def extract_from_path(data, path) do
    Regex.split(~r{\.}, path)
    |> Enum.reduce(data, fn key, extract ->
      Access.get(extract, key)
    end)
  end

  def get_in_path(data, path) do
    Kernel.get_in(data, Regex.split(~r{\.}, path))
  end
end
