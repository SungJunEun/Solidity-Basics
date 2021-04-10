pragma solidity ^0.8.1;

//2. SImple example: with a pure funciton
//3. Advance example: with a struct
//4. using ...for
//5. Deployed vs Embedded libraries

library Mylibrary{
    function add10(uint a) pure public returns(uint) {
        return a +10;
    }
    struct Player {
        uint  score;
    }
    
    function incrementScore(Player storage _player, uint points) public {
        _player.score += points;
    }
    
}

contract MyContract {
    
    mapping(uint => Mylibrary.Player) players;
    
    function foo() external {
        uint result = Mylibrary.add10(10);
        Mylibrary.incrementScore(players[0], 10);
    }
    //using Mylibrary for Mylibrary.Player;
    // players[0].incrementScore(10);
}
