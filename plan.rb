=begin 
Two player math game
Players take turns
Answer simple math addition problems
A new math question is generated for each turn
By picking two numbers between 1 and 20
The player whose turn it is is prompted the question and must answer correctly or will lose a life.

Both players start with 3 lives
At the end of every turn, the game should output the new scores for both players
The game doesn’t end until one of the players loses all their lives.
At this point, the game should announce who won and what the other player’s score is.


Nouns

Players instantiate a new player

Question?
Message - inputs, outputs, two separate classes
Game? - Class

We need to keep track of whose turn it is


Plan
How would I do this in JS?
Create two player objects
Create functions for each piece of functionality
Run the game inside of a while loop

I would use a while loop I suppose to keep asking questions.
I would use a math.random to generate the numbers. Creating the question would be inside a function or method.


PLan
Start the game by running game.start?
this will run a method that instantiates two new players from the class. We will intitialize with a variable called currPlayer


=end