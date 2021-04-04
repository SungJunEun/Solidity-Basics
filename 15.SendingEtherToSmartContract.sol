pragma solidity ^0.8.1;
contract MyContract{
    mapping(address=>uint) balances;
    
    
    function invest() external payable {
        if(msg.value < 1000) {
            revert(); // cancel the transaction
        }
        balances[msg.sender] += msg.value;
    }
    
    function balanceOf() external view returns(uint) {
        return address(this).balance; // this -> this smartcontract
    }
}
