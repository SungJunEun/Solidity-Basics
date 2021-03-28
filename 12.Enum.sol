pragma solidity ^0.8.1;
contract MyContract {
    //1. Declare enum : way to represent different options
    //2. Use enum
    //3. Accept enum as argument
    
    
    //1. dec;are enum
    enum STATE {
        INACTIVE,
        ACTIVE,
        PRO,
        CANCELLED
    }
    STATE state;
    
    struct User {
        STATE states;
    }
    
    //2.USE ENUM
    function setToActive() external {
        state = STATE.ACTIVE;
    }
    
    function foo() external {
        if(state == STATE.ACTIVE) {
            // DO SOMETHING!
        }
    }
    
    //3.Accept enum as argument
    function bar(STATE _state) external {
        
    }
    
}
