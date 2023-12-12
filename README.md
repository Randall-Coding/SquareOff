Running a Square Off server in the cloud.

**SQUARE OFF GAME**

Need to pass the time with friends but don't have a game console on hand to battle it out? Square Off may be the game you're looking for. Square Off is a simple, fast paced two player game that works on any device connected to the internet. Best of all it is totally free. The object of the game is that each player tries to score the ball in the opponent's goal by blocking off squares on the board. A selected square makes the ball bounce off of it and ricochet in another direction at ever increasing speeds. It is sort of like a modern foosball table, but with a few twists!

Each player can select blocks within two-thirds of the screen (including the area in front of his goal). But you can't just fill the entire screen with blocks. Each player can have 3 blocks on the screen at a time. If you lay down a fourth block, the first block you put down disappears. So be smart with your blocks!

**GAME HISTORY**

[Square Off](https://github.com/ScriptaGames/SquareOff/) is an open source game created by a group called [ScriptaGames](https://github.com/ScriptaGames/SquareOff/) for Ludum Dare 35.  "What the heck is a Ludum Dare 35?" you might ask.  [Ludum Dare](https://ldjam.com/events/ludum-dare/rules) is a "game jam" or game development event at which games are created based on a given theme over a 72 hour period. Using the theme is a suggestion rather than a requirement (in this case the theme was "shapeshift") and there are no physical or cash prizes for the competition.  Your prize is your product and the experience.

So don't be surprised if this is the first time hearing about Square Off or Ludum Dare.  Just enjoy the undiscovered wonders of a truly indy game.

**HOW TO PLAY**

- Enter a nickname.
- Select a color.
- Click "Play". This takes you to the game lobby, waiting for another player to join.
- Once Player 2 joins, the game begins!
- Each player has access to 2/3 of the screen to select blocks.
- 3 blocks per player may be selected at any time. Once you have 4 blocks, your oldest block disappears.
- Lay down blocks to defend your goal and score on the opponents.
- Each bounce off of a block makes the block disappear and the ball go faster.
- The highest score wins.

<p align="center"><small> Fig 1 - Start screen </small></p>
<img src="https://user-images.githubusercontent.com/39175191/277579598-2e230d63-9295-4781-b8d1-b91292c16436.png" width="95%">

<p align="center"><small> Fig 2 – Lobby area </small></p>
<img src="https://user-images.githubusercontent.com/39175191/277582057-d52c7211-7968-4da4-aa60-e36483bfa17d.png" width="95%">

<p align="center"><small> Fig 3 - Gameplay </small></p>
<img src="https://user-images.githubusercontent.com/39175191/277579577-171e3046-5fd8-489d-81fb-91fb0c138d0a.png" width="95%">


**PLAYING THE GAME ON ACORN**

To play this game we will be using a server deployed with Acorn.  [Acorn](https://acorn.io) is a simple application deployment framework built on Kubernetes.  It simplifies complex deployments by putting them into a single acorn image that can be deployed almost anywhere.  Pretty cool right?

Acorn, like Docker, uses a simple configuration file (in this case called the Acornfile).  [The Acornfile](https://github.com/randall-coding/SquareOff/blob/master/Acornfile) below was used to create our acorn image:

```
containers: {
   web: {
     image: "[ghcr.io/randall-coding/squareoff:latest](http://ghcr.io/randall-coding/squareoff:latest)"
     ports: publish: "8080/http"
     env: {
       HOST: "@{services.web.endpoint}"
       ENV: "prod"
     }
  }
}
```

The file declares a container called "web", provides a link to the docker image, publishes a port which connects our app to the public url, and sets two simple environment variables for the container.

Using this Acornfile we launched an instance of a game server on Acorn's free sandbox.  

[CLICK HERE](https://squareoff-game-23b76bae.ypkt0y.on-acorn.io) to play this game on our server.  Enjoy!

**SUMMARY**

Square Off is a fun game that takes a new twist on foosball.  Blocks are laid down to bounce a ball back at your opponent’s goal at ever increasing speeds. We deployed our Square Off server using Acorn, which allows easy containerized deployment on Kubernetes. You can also deploy your own server using our Acorn image with just a few clicks on the Acorn Sandbox.  [CLICK HERE](https://squareoff-game-23b76bae.ypkt0y.on-acorn.io/) to play this game on our server.