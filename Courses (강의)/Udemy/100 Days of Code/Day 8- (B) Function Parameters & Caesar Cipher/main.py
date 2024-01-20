from art import logo

alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

def caesar(start_text, shift_amount, cipher_direction):

  end_text = ""

  if cipher_direction == "decode":
    shift_amount *= -1

  for i in start_text:

    if i in alphabet:

      position = alphabet.index(i)
      new_position = position + shift_amount
      end_text += alphabet[new_position]

    else:
      end_text += i

  print(f"This is the {cipher_direction}d result: {end_text}")

print(logo)

should_end = False

while not should_end:

  direction = input("Type 'encode' to encrypt & 'decode' to decrypt:\n")

  text = input("Message:\n").lower()

  shift = int(input("Shift Number:\n"))

  shift = shift % 26

  caesar(start_text = text, shift_amount = shift, cipher_direction = direction)

  restart = input("Type 'yes' if you want to go again, otherwise type 'no'.\n")

  if restart == "no":
    should_end = True
    print("Done")
