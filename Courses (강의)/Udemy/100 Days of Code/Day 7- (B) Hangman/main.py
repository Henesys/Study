import random 

from hangman_art import logo, stages
from hangman_words import word_list

chosen_word = random.choice(word_list)
word_length = len(chosen_word)

end_of_game = False
hp = 5

print(logo)

guesses = []

for _ in range(word_length):
    guesses += "_"

while not end_of_game:

    guess = input("Guess a letter: ").lower()

    if guess in guesses:
        print(f"You've already guessed {guess}")

    for position in range(word_length):
        letter = chosen_word[position]

        if letter == guess:
            guesses[position] = letter

    if guess not in chosen_word:

        print(f"You guessed {guess}, that's not in the word. You lose a life.")
        
        hp -= 1
        if hp == 0:
            end_of_game = True
            print("You lose.")
            print(f"The word was {chosen_word}.")

    print(f"{' '.join(guesses)}")

    if "_" not in guesses:
        end_of_game = True
        print("You win.")
        print(f"The word was {chosen_word}.")

    print(stages[hp])    