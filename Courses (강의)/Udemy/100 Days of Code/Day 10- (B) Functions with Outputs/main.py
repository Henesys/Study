import os
from art import logo

def clear():
     os.system("clear")

def add(n1, n2):
  return n1 + n2

def subtract(n1, n2):
  return n1 - n2

def multiply(n1, n2):
  return n1 * n2

def divide(n1, n2):
  return n1 / n2

operations = {
  "+": add,
  "-": subtract,
  "*": multiply,
  "/": divide
}

def calculator():

  print(logo)

  num1 = float(input("First Number: "))

  for symbol in operations:
    print(symbol)

  should_continue = True
 
  while should_continue:

    opSymbol = input("Operation: ")
    num2 = float(input("Second Number: "))

    calculation = operations[opSymbol]
    answer = calculation(num1, num2)
    
    print(f"{num1} {opSymbol} {num2} = {answer}")

    if input(f"Type 'y' to continue calculating with {answer}, or type 'n' to start a new calculation: ") == 'y':
      num1 = answer

    else:
      should_continue = False
      clear()
      calculator()

calculator()