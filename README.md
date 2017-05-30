# Battle Ship

A project to replicate the classic board game of Battle Ship. Using a 4 x 4 game board, the user and computer take turns launching missiles against each other's boats until both boats are destroyed.

Each player has a small boat (2 spaces long) and a big boat (3 spaces long). When all 5 spots holding a ship on the game board are destroyed the player or computer wins the game.

There's still a LOT to do to make this project a truly "deliverable" piece of software, but in the meantime it functions as it is intended to and is playable.

![Gameplay Animation](http://i.imgur.com/Zhdu6oD.gif)

### Future of project
* Project requires massive amounts of refactoring.
* Parts of program require input validation to prevent unacceptable input from crashing program.
* All messages need relocated into the Message class.
* Boats actually know their positions, and in the future I want to let the user know when they've sunk an individual boat, using those stored coordinates. User will see a message such as "You sunk the Computer's Small Boat".
* Redundant method and function calls must be refactored into helper methods that can be called on more cleanly.
* Testing was abandoned toward the end of the development process, and now must be revisited upon refactoring to make sure we are not experiencing results that are "outside my desired outcomes".

### Conclusion
This project was a lot of fun. It was a huge challenge to figure out how to randomly generate game pieces that did not run off the board and generate nil-class errors. It was also a challenge to keep them from colliding or overlapping while they were being placed. This Game taught me all about using recursion, classes using nested class objects, and many other concepts.

I highly enjoyed this project and look forward to perfecting it in the future when time allows.

#### Joel Lindow
Software Developer
