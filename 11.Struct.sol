pragma solidity ^0.8.1;
contract MyContract {
    //1. delcare struct
    //2. CRUD
    //3. Array of struct
    //4. Mapping of struct
    
    //1.declare struct, struct = template and we clone it 
    
    struct User {
        address addr;
        uint score;
        string name;
    }
    
    User[] users;
    
    
    mapping(address => User) userlist2; // pick something unique to the struct
    
    function foo(string calldata _name) external{
        User memory user1 = User(msg.sender, 0, _name );    
        User memory user2 = User(msg.sender, 0, _name );    
        User memory user3 = User({name:_name, score:0, addr:msg.sender});
        user3.addr;
        user3.score = 10;
        delete user3;
        
        
        users.push(user1);
        users.push(User(msg.sender, 1, 'ewe'));
        
        userlist2[msg.sender] = user2;
        userlist2[msg.sender] = User(msg.sender, 0, '32');
        
    }
    
    
}
