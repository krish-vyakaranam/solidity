//SPDX-License-Identifier : MIT
pragma solidity ^0.8.0;



contract mod {
    address owner = msg.sender;
    
    modifier ownerOnlyAcess {
        require (owner==msg.sender,"only owner can access");
        _;
    }
    function access() public ownerOnlyAcess view returns(address) {
        return msg.sender;
    }
}
