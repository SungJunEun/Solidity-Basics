pragma solidity ^0.8.1;
contract MyContract {
    // tx
    tx.origin
    //ethereum address that sends the tx
    // msg
    msg.value
    // amount of ether that is sent to the smart contract 1 wei = 10 ^(-10) ether 
    msg.sender
    //ethereum address that sends the message
    Alice => Smart contract A    => smart contract B
                tx.origin = Alice       tx.origin = Alice
                msg.sender = Alice      msg.sender = smart contract B
    // block
    block.timestamp
    //timestamp of which the block was mined
}
