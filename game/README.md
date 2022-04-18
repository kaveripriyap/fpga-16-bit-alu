# ECHO

Our game Echo builds upon the principles of a memory game. 2 players compete against each other to test their cognitive skills. The two players are provided with 2 buttons to choose from. The aim of the game is for the players to mimic the sequence of buttons pressed by the previous player and add 1 additional component to the progression. The player that doesn’t remember the sequence accurately loses the round. If both the players can echo each other's sequence up to length 16, a tie is called for the round and both players get a point.The game ends when the 5th round is completed and a winner or a tie is declared.

![diagram](https://user-images.githubusercontent.com/77422453/163777115-604eda8a-7236-4f41-bc1d-dc1af7cdf5e8.png)

### User Manual

I/O devices and their uses:

Start/Stop button 
To control the start and the end of the game

3 Buttons 
2 buttons for the players to press during the game
1 start/stop button 

2 2-digit 7 segment display
To display the score for each of the players
To display the current round of the match between the two players

LED
To indicate if the pattern entered so far is correct
Green - if correct
Red - if incorrect


The game begins when the start button is pressed. After the game successfully powers on, the first player has to start by inputting a sequence of length 1. The next player has to input a sequence of length 2, adding on to the previous sequence. Every consecutive event will be the players testing their memory and continuing their sequence. If the RGB button turns green, the sequence entered is correct, if it turns red, the sequence is incorrect.

Rules to keep in mind:

Each player can press exactly 1 extra button than the previous sequence.
A player cannot consecutively play twice.
A player cannot press 2 buttons at once.

Scores are parallelly reflected in the scores display unit.
Once the total number of rounds reaches 5, the game ends and a winner is declared.

Sequence termination
If let's say the players keep playing their sequences till 16 becomes the length of the sequence, then the sequence terminates and both the players get a point.

Draw scenario:
There can also be a special scenario when a draw is declared. This happens if both the players together have the same score at the end of 5 rounds. This can occur when there has been a draw in any of the rounds. 


### Data Path

![image](https://user-images.githubusercontent.com/77422453/163808712-261bdf94-3985-4d3b-af02-256315bf4a77.png)

### FSM Diagram

<img width="11904" alt="FSM + Datapath (2)" src="https://user-images.githubusercontent.com/77422453/163808899-781f81d5-65da-46d7-86cd-c979f8edb012.png">



