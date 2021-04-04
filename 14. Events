pragma solidity ^0.8.1;

contract MyCOntract{
    event NewTrade (
            uint date, 
            address indexed from, // indexed -> you can filter the events by this field, its more expensive maximum 3 indexed
            address to,
            uint amount
    );
        
    function trade(address to, uint amount) external {
        emit NewTrade(block.timestamp, msg.sender, to, amount);    
    }
}
// 1. events cannot be read in smartcontract
// 2. gas contract is lower than storage variables
