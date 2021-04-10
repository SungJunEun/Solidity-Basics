pragma solidity ^0.8.1;
contract Mycontract {
    //1. what happen when there is an error?
    //2. throw
    //3. revert()
    //4. require()
    //5. assert()
    //6. error in other contracts
    uint a;
    function foo() external {
        a = 10;
        //
        //
        //
        // BOOM! error 1) state of the variables are reverted 2) gas are consumed
       if (a == 10) {
           revert('this is why it reverted');
       }
       require(a != 10, 'this is why it reverted');
       assert(a != 10); // error that should never occur
    }
    
    function willThrow() external {
        require(true == false, 'Because reasons');
    }
    
    function willThrowInOhterCOntract() external {
        B b = new B();
        b.bar();
        
    }
    
}

contract B {
    function bar() external {
        revert('because other reasons');
    }
}
