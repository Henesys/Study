#If the bill was $150.00, split between 5 people, with 12% tip. 

#Each person should pay (150.00 / 5) * 1.12 = 33.6
#Format the result to 2 decimal places = 33.60

#Tip: There are 2 ways to round a number. You might have to do some Googling to solve this.💪

#Write your code below this line 👇

print("Tip Calculator")

bill = float(input("Total Bill: $ "))
people = int(input("# of People: "))
tipPercentage = int(input("% you would like to tip: "))

dividedBill = round(((bill * (tipPercentage / 100)) + bill) / people, 2)

print(f"Each person pays {dividedBill}.")