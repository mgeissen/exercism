defmodule RotationalCipher do
  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """

  @alphabet ["a","b","c","d","e","f","g","h","i","j",
            "k","l","m","n","o","p","q","r","s","t",
            "u","v","w","x","y","z"]

  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
    text
        |> String.graphemes
        |> Enum.map(fn (x) -> getShiftLetter(x,shift)  end)
        |> Enum.join

  end

  def getShiftLetter(letter, shift) do
     upperCase = letter =~ ~r/^\p{Lu}$/u
     index = Enum.find_index(@alphabet, fn (let) -> let == String.downcase(letter) end)
     if(index == nil) do
        letter
     else
        newIndex = rem((index + shift), 26)
        newLetter = Enum.at(@alphabet, newIndex)
        if upperCase, do: newLetter = String.upcase(newLetter)
        newLetter
     end


  end

end

