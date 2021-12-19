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
    }
    function addPlayer(string memory fullName, uint age, bool sex) public {
     players[msg.sender] =   Player(msg.sender,fullName,level.intern,age,sex);
      countPlayder++;
    }
    function getLevel(address addressPlayer) public returns (level){
        return players[addressPlayer].myLevel;
    }
}