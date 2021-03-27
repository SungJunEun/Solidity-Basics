pragma solidity ^0.8.1;
contract MyContract {
    uint value;
    
    function getValue() external view returns(uint) {
        return value; 
        // view -> read only 
    }
    function add2() external pure  returns(uint) {
        return 1+1;
        // pure ->  read only, just computation(compute hash break)
    }
    
    function setValue(uint _value) external {
        value = _value;
    }
}
