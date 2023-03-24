// SPDX-License-Identifier : Unlicensed
pragma solidity ^0.8.0;

contract proxy2 {
    uint a;
    address public sender;
    uint b;

function addition(uint _a,uint _b) public returns (uint){
    a = _a;
    b = _b;
    sender = msg.sender;
    return a+b;
}
}

contract proxy1 {
    uint  a;
    address  sender;
    uint b;
    function addition(address _contract, uint _a,uint _b) public {
        (bool success, bytes memory data) = _contract.delegatecall(
            abi.encodeWithSignature("addition(uint256,uint256)", _a,_b));
    }
}
