pragma solidity ^0.8.1;
contract MyContract {
   // 1. storage arrays actually stored in the blockchain
   // 2. memory arrays : only exists while executing the function
   // 3. array argumentws and return arrays from function
   
   //1. storage arrays
   uint[] myArray; // crud, create, read, update, delete
   
   
   function foo() external {
       myArray.push(2);
       myArray.push(3);
       
       myArray[0];
       
       myArray[0] = 20;
       
       delete myArray[1]; // doesn't change the length => myArray[1] = 0, myArray[1] = false
       
       for(uint i = 0; i < myArray.length; i++) {
           myArray[i];
       }
   }
   
   //2.memory arrays x saved in blockchain, only declared inside the function
   function bar() external {
       uint[] memory newArray = new uint[](10); // for memory array you have to specify the length of array
       newArray[0] = 10; // cannot use the push method
       newArray[1] = 20;
       
       newArray[0];
       
       newArray[0] = 100;
       
       delete newArray[0];
   }
   
   //3. arrays in functions
   function fooBar(uint[]  calldata myArr) external {
   }
   function fooBar2(uint[]  memory myArr) internal returns(uint[] memory) {
       
   }
}
