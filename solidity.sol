pragma solidity ^0.4.18;

contract Game1 {
  address public player1;
  address public player2;

  bool public player1Played;
  bool public player2Played;

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
    require(!gameFinished && (msg.sender == player1 || msg.sender == player2));

    if(msg.sender == player1){
      require(player1Played == false);
      player1Played = true;
      player1Bid = player1Bid + msg.value;
    }else{
      require(player2Bid == false);
      player2Played = true;
      player2Bid = player2Bid + msg.value;
    }
    if(player1Played && player2Played){
      if(player1Bid >= player2Bid * 2)
    }
  }
}
