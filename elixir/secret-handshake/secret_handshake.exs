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
    commands = []
    if (code <= 32) do
        binaryString = Integer.to_string(code, 2)
        commands = getCodeForBinary(binaryString)
        if(code >= 16) do
           commands = reverseList(commands)
        end
    end
    commands
  end

  def getCodeForBinary(binary) do
    returnList = []
    if String.slice(binary, -1..-1) == "1", do: returnList = returnList ++ ["wink"]
    if String.slice(binary, -2..-2) == "1", do: returnList = returnList ++ ["double blink"]
    if String.slice(binary, -3..-3) == "1", do: returnList = returnList ++ ["close your eyes"]
    if String.slice(binary, -4..-4) == "1", do: returnList = returnList ++ ["jump"]
    returnList
  end

  def reverseList([])do
       []
  end

  def reverseList([head | tail]) do
      reverseList(tail) ++ [head]
  end

end

