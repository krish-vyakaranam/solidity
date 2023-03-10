//SPDX-License-Identifier : UNIDENTIFEID
pragma solidity ^0.8.0; //version of solidity

//contract declaration
contract typesofMemory {
    // Permanent storage variables: are defined in Storage (a struct type variable)
    struct Storage {
        uint a;
        bytes32 String;       
    }

Storage global;
function Memory(uint _a, bytes32 _b) public {               //the values given as _a and _b can not be stored in memory
    global.a = _a;                                          // values are stored to storage here
    global.String = _b;
   
}
}
