pragma solidity ^0.8.1;
contract MyContract {
    //1.storage : store data inside blockchain, persistent
    //2.memory : only kept in the execution of the function
    //3.stack : every simple delcared variable inside the function
    //4.calldata : available for function ether external or public
    
    
    //1.storage
    uint a; // outside the function automatically storage
    
    struct User {
        string name;
    }
    User[] users;
    
    function foo() external {
        users[0].name;
        User storage user = users[0];
        
        user.name = 'ethan';
    }
    
    //2.memory
    
    function foo2() external {
        users[0].name;
        User memory user = users[0];
        
        user.name = 'ethan';
        
        bar(user); // how to pass memory variable from one function to other
    }
    
    function bar(User memory user) internal {
        
    }
    //3.stack
    function foo3() external {
        uint b;
    }
    
    
    //4.calldata
    function foo(uint[] calldata _users) external {
        
    }
    
}
