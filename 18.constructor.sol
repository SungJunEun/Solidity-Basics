pragma solidity ^0.8.1;

//1. declaring constructor : executed only once when I deploy the contract. So good place to put all initializaiton logic
//2. difference with regular functions
//3. admin pattern
//4. calling other functions
//5. calling parent constructors

contract MyParentCOntract2 {
  constructor(uint a) public {
    // do some stuff
  }
}

contract Mycontract2 is MyparentCOntract2 {
  uint a;
  constructor(uint _a) MyparentCOntract2(_a) public {
    // it can be empty
  }
}

contract Mycontract {
  uint a;
  address admin; //3.
  constructor(uint _a) public {
    admin = msg.sender;
      //other intialization logic
    foo();
  }
  
  //2. 1) can only be exectued once, 2) only two viswibility; public, internal is possible
  function foo() {
    a = 2;
  }
}
