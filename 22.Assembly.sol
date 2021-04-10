pragma solidity ^0.8.1;

contract A {
    //What you can do with assembly
    //Ethereum Virtual Machine(EVM)
    //Assembly syntax
    //read and store data  
    //Assembly example 1: detect if address is a smart contract
    //Assembly example 2: cast bytes to bytes32
    // ONly use assembly if its needed
    
    function foo() external {
        uint a;
        uint b;
        uint c;
        c= a+b;
        address addr = msg.sender;
        uint size;
        //ethervm.io
        
        assembly {
            //c := add(1, 2)
            //let aa:= mload(0x40)
            //mstore(a, 2)
            //sstore(a,2)
            size := extcodesize(addr)
        }
        
        if(size == 0) {
            return true;
        }
        else {
            return false;
        }
    }
    
    function foo2() external {
        bytes memory data = new bytes(10);
        
       // bytes32 dataB32 = bytes32(data);
       
       bytes32 dataB32;
       
       assembly {
           dataB32 := MLOAD(add(data, 32))
       }
    }
    
}
