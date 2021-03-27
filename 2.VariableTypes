pragma solidity ^0.8.1;
contract MyContract {
    // 1. fixed size types
    bool isReady;
    uint a; // postive integer number
    address recipent; 
    bytes32 data; // any arbitrary binary data 
    
    //2. variable-size types -> use when you are not sure how long will be the variable-size
    string name; // we don't have convienient string manipulation
    bytes _data; // generalization of bytes32. doens't have predescribed length
    uint[] amounts; // can have on;y array of one fixed types
    mapping(uint => string) users; //users[10] = 'ethan'
    
    //3. user-defined data
    struct User {
        uint id;
        string name; 
        uint[] friendIds;
        
    }
    enum Color {
        RED,
        GREEN,
        BLUE
    }
    // Color.RED, Color.BLUE... 
}
