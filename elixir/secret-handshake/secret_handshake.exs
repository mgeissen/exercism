defmodule SecretHandshake do
  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
    reverse = false
    if code >= 16, do: reverse = true

  end

  def getCodeForBinary(position) do
    return = ""
        if code == 1, do: return = "wink"
        if code == 2, do: return = "double blink"
        if code == 3, do: return = "close your eyes"
        if code == 4, do: return = "jump"
        return
  end

end

