Feature: Playing the game

#  Background: Warrick has an account and is logged in
#    Given Warrick has an account
#    And Warrick is logged in
#
#  Rule: Letter in the word and on the right spot is highlighted in green
#    Example: Warrick guesses a word with a correct letter in the correct spot
#      Given the target word is:
#        | F | R | A | M | E |
#      When Warrick guesses:
#        | C | L | A | S | S |
#      Then the game should respond with:
#        | BLACK | BLACK | GREEN | BLACK | BLACK |
#
#  Rule: Letter in the word but on the wrong spot is highlighted in yellow
#    Example: Warrick guesses a word with a correct letter in the wrong spot
#      Given the target word is:
#        | F | R | A | M | E |
#      When Warrick guesses:
#        | M | E | O | W | S |
#      Then the game should respond with:
#        | YELLOW | YELLOW | BLACK | BLACK | BLACK |
#
#  Rule: Letter is not in the word is highlighted in black
#    Example: Warrick guesses a word with a letter not in the word
#      Given the target word is:
#        | F | R | A | M | E |
#      When Warrick guesses:
#        | G | U | I | L | T |
#      Then the game should respond with:
#        | BLACK | BLACK | BLACK | BLACK | BLACK |
#
#  Rule: When a letter appears in the word once and the letter is guessed twice it is black
#    Example: Warrick guesses a word with a letter that appears once in the word
#      Given the target word is:
#        | F | R | A | M | E |
#      When Warrick guesses:
#        | S | L | E | E | T |
#      Then the game should respond with:
#        | BLACK | BLACK | YELLOW | BLACK | BLACK |
