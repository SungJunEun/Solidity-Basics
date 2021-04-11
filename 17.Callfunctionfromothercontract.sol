pragma solidity ^0.8.1;

import 'ContractB.sol';

contract A {
    //1. call function of other contract
    //2. import keyword
    //3. contract interface
    //4. error propagation
    
    
    //1.interface of B => B 
    //2. address of B 
    
    address addressB;
    
    
    function setAddressB(address _addressB) external {
        addressB = _addressB;
    }
    
    function callHelloWOrld() external view returns(string memory) {
        B b = B(addressB);
        return b.helloWorld();
    }
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
pragma solidity ^0.8.1;

interface InterfaceB {
     function helloWorld() external pure returns(string memory);
}

contract B {
    function helloWorld() external pure returns(string memory) {
        return 'HelloWorld';
    }
}
