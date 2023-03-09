//SPDX-License-Identifier : UNIDENTIFEID
pragma solidity ^0.8.0;         //version of solidity


//contract declaration
contract msgContext {
    address sender;
    uint amount;
    
    
function context() public payable returns(address, uint) {
    sender = msg.sender;
    amount = msg.value;
    return (sender,amount);

}

}
