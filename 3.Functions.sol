pragma solidity ^0.8.1;
contract MyContract {
    uint value;
    
    function getValue() external view returns(uint) {
        return value; 
    // read the value
    }
    function setValue(uint _value) external {
        value = _value;
    // modify the value with _value
    }
}
