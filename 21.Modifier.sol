pragma solidity ^0.8.1;
contract MYcontract{
    //1. modifier syntax
    //2. passing arguments
    //3. chaining modifiers
    //4. example for access control
    // modifier : allow you to run some code before executing funciton, good for access control
    
    function foo(uint a) external myModifier1(a) myModifier2(a)  {
        //do some stuff
    }
    
    modifier myModifier1(uint a) {
        //by default it is internal visibility
        require(a==10, 'my error message');
        _;
    }
    modifier myModifier2(uint a) {
        //by default it is internal visibility
        require(a==10, 'my error message');
        _;
    }    
    
}

//4.
contract MyCOntract{
    
    address admin;
    function withdrawEther(address admin) external onlyAdmin(admin) {
        //some stuff
    }
    
    modifier onlyAdmin(address admin) {
        require(msg.sender == admin, 'only admin');
        _;
    }
}
