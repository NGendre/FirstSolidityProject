pragma solidity ^0.4.18;

contract Game1 {
  address public player1;
  address public player2;

  uint private player1Bid;
  uint private player2Bid;

  bool public gameFinished;
  address public winner;
  uint gains;

  event GameStartingEvent(address player1, address player2);
  event EndOfRoundEvent(uint player1Bid, uint player2Bid);
  event EndOfGameEvent(address winner,uint gains);

  function Game() public {
    player1 = msg.sender;
  }
  function registerAsPlayer2() public{
    require(player2 == address(0));

    player2 = msg.sender;

    GameStartingEvent(player1, player2);
  }

  function play() public payable{
    require(!)
  }
}
