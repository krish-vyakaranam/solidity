//SPDX-License-Identifier : UNIDENTIFEID
pragma solidity ^0.8.0;         //version of solidity


//contract declaration
contract mod {
    uint256 a;
    address payable owner;

    constructor (){
        owner = payable(msg.sender);
    }


    /*view function : that takes data from the state (variable b), gets added to another declared variable (a),
     and sum is returned in another variable c.*/
    function viewData(uint256 b) public view returns (uint256 c) {
        return a + b;
    }


    /*Pure funtion: takes a variable (d), and returns square of d */
    function pureData(uint256 d) private pure returns (uint256) {
        return d**2;
    }

    /*payable function: it takes arguments as receipients address and value of ether that needs to be paid*/

    function pay(address payable _a, uint _b) public {
        _a.transfer(_b);
    }
}
