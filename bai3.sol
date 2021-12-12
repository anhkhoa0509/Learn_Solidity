pragma solidity >=0.7.0 <0.9.0;

contract Game {
    uint public countPlayder = 0 ;
    mapping (address => Player ) public players;
    enum level {intern,fresher,middle}
    struct Player {
        address addressPlayer;
        string fullName;
        level myLevel;
        uint age;
        bool sex;
        uint createTime;
    }
    function addPlayer(string memory fullName, uint age, bool sex) public {
     players[msg.sender] =   Player(msg.sender,fullName,level.intern,age,sex,block.timestamp);
      countPlayder++;
    }
    function getLevel(address addressPlayer) public returns (level){
        return players[addressPlayer].myLevel;
    }
    function changeLevel (address playerAddress) public{
        Player storage player = players[playerAddress];
        if(block.timestamp >=player.createTime + 15){
            player.myLevel = level.middle;
        }
    }
}