pragma solidity ^0.8.1;

//1. Create child contracts
//2. Store child contract addresses
//3. Cast contract pointer to addresses
//4. Call functions of child contracts
//5. Caveat when admin is contracts

contract LoanFactory {
    Loan[] laons;
    function createloan() external {
        Loan loan = new Loan(100);
        loans.push(loan);
        
        loan.reimburse();
    }
}

contract Loan {
    uint public amount;
    address admin;
    constructor(uint _amount) public {
        amount = _amount;
        admin = msg.sender;
    }
    function withdraw() external {
        //withdraw the ether
    }
    
    function reimburse() external {
        
    }
}
