pragma solidity ^0.8.1;
contract MyContract{
    //1. transfer
    //2. address vs address payable
    //3. address payable casting (address and uint160)
    //4. msg.sender
    //5. send vs transfer
    
    //1&2
    address payable[] recipients;
    function sendEther(address payable recipient) external {
        recipient.transfer(1 ether);
        // transfer 1 ether from this smart contract to recipient
        
    //3    
        address a;
        a = recipient; // address payable -> address casting
        a.transfer(100);
    //4    
        msg.sender.transfer(100); // type of msg.sender is address payable
    //5    
        recipient.send(100); // send-> if the recipient's smart contract has error it returns False boolean
    }
}
