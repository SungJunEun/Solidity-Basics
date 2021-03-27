pragma solidity ^0.8.1;
contract MyContract {
    uint private a;
    // private -> can only be read in same contract
    function foo() external {
        uint b = a+1;
    }
    uint internal c;
    // internal -> read in contract and inherited contract
    uint public d;
    // public -> read inside and outside contract
    uint e;
    // not mentioned -> private
    
    uint public f;
    
    function f() public view returns(uint){
        
    }
    // above two code is identical
}
