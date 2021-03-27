pragma solidity ^0.8.1;
contract MyContract {
    uint value;
    
    function _getValue() private view returns(uint) {
        return value; 
        // private -> can only call function inside the contract _ is convention
    }
    function _getValue2() internal view returns(uint) {
        return value; 
        // private -> can only call function inside the contract & contracts that inhert it
    }
    function getValue3() external view returns(uint) {
        return value; 
        // external -> can only call function outside the contract
    }    
    function getValue4() public view returns(uint) {
        return value; 
        // public -> can call inside or outside the contract
    }
/*
RUle of Thumb : GIve the entity minimum previlidge
First try with private -> internal -> external -> public
DOn't use all function public! -> security problem
*/
}
