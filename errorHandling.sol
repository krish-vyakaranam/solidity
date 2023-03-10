//SPDX-License-Identifier : UNIDENTIFEID
pragma solidity ^0.8.0; //version of solidity

//contract declaration
contract errorHandling {
    uint256 a;
    uint256 public b;
    uint256 c;
    uint256[] d;
    uint256 public length; // an array to collect even numbers with values < 10

    function checkRequire(uint256 _a, uint256 _c)
        public
        returns (uint256, uint256)
    {
        a = _a;
        c = _c;
        if (c == 0) revert(); //division by zero is not possible
        b = a / c;
        require(b % 2 == 0, "quotient is odd"); // b is odd number
        assert(b < 10); // checks if b is greater than 10
        d.push(b);
        length = d.length;
        return (b, length);
    }
}
