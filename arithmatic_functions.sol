/* Smart contract that takes some ether from the user. ANd expression of ether into wei and gwei respectively */
//SPDX-License-Identifier : UNLICENSED          //to describe the license of the smart contract written
pragma solidity ^0.8.0;                         //to declare version of solidity used 



contract arithmatic {

//declaration of variables
  uint a;
  uint b;
  uint public c;

//function for addition of numbers
/*
-->> To take the inputs externally after contract is deployed, parameters are passed as arguments in each function. 
-->> each function is made public so that function can be called after deployment
-->> variable 'c' is made public to track the changes in 'c' after arithmatic operations are done.
*/


function add(uint _a, uint _b)  public returns (uint){
    a= _a;
    b=_b;    
    c = a+b; 
    return c;
  }

//function for subtraction of numbers
function sub(uint _a, uint _b)  public returns (uint){
    a= _a;
    b=_b;    
    c = a-b; 
    return c;
  }
 
//function for multiplication of numbers
function mul(uint _a, uint _b)  public returns (uint){
    a= _a;
    b=_b;    
    c = a*b; 
    return c;
  }

//function for division of numbers
function div(uint _a, uint _b)  public returns (uint){
    a= _a;
    b=_b;    
    c = a/b; 
    return c;
  }
}
  


