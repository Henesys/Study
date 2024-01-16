# Reeborg's World- Hurdles Challenge:
# https://reeborg.ca/reeborg.html?lang=en&mode=python&menu=worlds%2Fmenus%2Freeborg_intro_en.json&name=Hurdle+1&url=worlds%2Ftutorial_en%2Fhurdle1.json

'''
Hurdles challenge using for loops only
'''

def turn_around():
    turn_left()
    turn_left()
    
def turn_right():
    turn_left()
    turn_left()
    turn_left()

def jump():
    move()
    turn_left()
    move()
    turn_right()
    move()
    turn_right()
    move()
    turn_left()

# jump()
# jump()
# jump()
# jump()
# jump()
# jump()

# Alternative
for i in range(6):
    jump()

'''
Hurdles challenge using while loop
'''

def turn_around():
    turn_left()
    turn_left()
    
def turn_right():
    turn_left()
    turn_left()
    turn_left()

def jump():
    move()
    turn_left()
    move()
    turn_right()
    move()
    turn_right()
    move()
    turn_left()

numHurdles = 6

# Can add "while not @ goal, jump condition here."
while numHurdles > 0:
    jump()
    numHurdles -= 1

'''
Hurdles challenge using while loop and randomized hurdle placement
'''

def turn_around():
    turn_left()
    turn_left()
    
def turn_right():
    turn_left()
    turn_left()
    turn_left()

def jump():
    # move() --> since the else statement will take care of wall placement
    turn_left()
    move()
    turn_right()
    move()
    turn_right()
    move()
    turn_left()

while not at_goal():

    if wall_in_front():
        jump()

    else:
        move()

'''
Hurdles challenge using while loop with randomized hurdle placement and randomized hurdle height
'''

def turn_around():
    turn_left()
    turn_left()
    
def turn_right():
    turn_left()
    turn_left()
    turn_left()

def jump():
    turn_left()

    while wall_on_right():
        move()

    turn_right()
    move()
    turn_right()

    while front_is_clear():
        move()

    turn_left()

while not at_goal():

    if wall_in_front():
        jump()

    else:
        move()