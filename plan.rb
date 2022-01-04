# Nouns (class)

# 1. Player

# It's used to construct each player and keep track of the player's name & how many lives left.
# If the player answered incorrectly then 1 life is subtracted
# Methods: answered_wrong

# 2. Question

# It generates the 2 random numbers between 1 and 20.
# It also calculates the sum of the 2 numbers to keep track of the correct answer
# Methods: correct_answer

# 3. Game

# - turn

# It's used to keep track of whose player's turn it is by using a counter variable
# starting from 1 and incremented each turn. To check whose turn it is, it will
# apply % 2 to the counter to see if it's an even or odd number.
# Methods: next_player

# - status

# Keeps track of the lives left of both players and the winner.
# User input/output will be done in this class as well as track the current_player
# Methods: current_score, final_score