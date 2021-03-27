pragma solidity ^0.8.1;
/**
1. pragma solidity version ^0.8.1 means 0.8.2, 0.8.3... are okay
2. every end of statement solidity needs ;
*/
contract MyContract {
    uint a;
    uint b;
    
    function add() external {
        return a + b;
    }
} 
