defmodule Rocketpay.Numbers do
  def sum_from_file(filename) do
    # file = File.read("#{filename}.csv")
    # handle_file(file)

    # Passar para a função como primeiro parametro implicito
    "#{filename}.csv"
    # Passar o resultado para a proxima função como primeiro parametro implicito
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, result}) do
    result =
      result
      |> String.split(",")
      |> Stream.map(fn number -> String.to_integer(number) end)
      |> Enum.sum()

    {:ok, %{result: result}}
  end

  defp handle_file({:error, _reason}), do: {:error, %{message: "Invalid file!"}}
end
