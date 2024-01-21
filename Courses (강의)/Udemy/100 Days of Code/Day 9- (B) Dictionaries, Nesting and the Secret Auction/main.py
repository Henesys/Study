import os
from art import logo

print(logo)

# Substitute for clear package in replit
def clear():
     os.system("clear")

bids = {}
auction_finished = False

def find_highest_bid(bidding_record):

    highest_bid = 0
    winner = ""

    for i in bidding_record:

        bid_amount = bidding_record[i]

        if bid_amount > highest_bid:

            highest_bid = bid_amount
            winner = i

    print(f"Winner is {winner} with a bid of ${highest_bid}.")

while not auction_finished:

    name = input("Name: ")
    inputBid = int(input("Bid Amount: $"))
    bids[name] = inputBid

    should_continue = input("Are there any other bidders? Type 'yes or 'no'.\n")

    if should_continue == "no":
        auction_finished = True
        find_highest_bid(bids)

    else:
        clear()