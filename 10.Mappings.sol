pragma solidity ^0.8.1;
contract MyContract {
    //1. declare mappings
    //2. CRUD
    //3. Default values
    //4. Extotic mapping 1: nested mappings
    //5. Exotic mapping2: array inside mappings
    
    //1.declare mappings
    mapping(address => uint) balances;
    mapping(address => mapping(address => bool)) approved;
    mapping(address => uint[]) scores;
    function foo(address spender) external {
        // 2- add
        balances[msg.sender] = 100;
        // 2- read
        balances[msg.sender];
        //2-Update
        balances[msg.sender] = 200;
        //2-Delete
        delete balances[msg.sender];
        

        //3- Default values every key is accesible which value is the defualt of the type of value  
        balances[someAddressThatdonotexist] => 0 
    
        //4. exotic mapping 1: nested mappings
        approved[msg.sender][spender] = true;
        approved[msg.sender][spender];
        approved[msg.sender][spender] = false;
        delete approved[msg.sender][spender];
        
        //5.exotic mapping 2: array inside mappings
        scores[msg.sender].push(1);
        scores[msg.sender].psuh(2);
        scores[msg.sender][0];
        scores[msg.sender][0] = 1;
        delete scores[msg.sender][0];
    }

}
