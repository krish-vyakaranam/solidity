//SPDX-License-Identifier : UNLICENSED          //to describe the license of the smart contract written
pragma solidity ^0.8.0;                         //to declare version of solidity used 


/*declaration of smart contract with four variables of different types. 
All the variables are declared globally so that they can be used everywhere
    uint - unsigned integer with 32 bytes of storage
    bool - boolean with default value being FALSE
    address - 20byte value. address of EOA
    string - text message
*/
contract functions {                            
uint public number;
bool  public agreement;
address public sender;
string public message;



// function to initialize the variables declared globally above.
function get(uint _number, bool _agreement, address _sender, string memory _message) public {
  number = _number;
  agreement = _agreement;
  sender = _sender;
  message = _message;
}


// function to get the values of variables initialized using set() above
function set() public returns (uint , bool, address, string memory){
return (number, agreement , sender, message);
}

}
