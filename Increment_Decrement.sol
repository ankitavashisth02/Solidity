// SPDX-License-Identifier: UNLICENSED

pragma solidity <0.9.1;

contract Test{
    uint public a;

    function printing(uint _a) public {
        a = _a;
    }
    function Increment() public{
        a= a+1;
    }

    function Decrement() public{
        a = a-1;
    }
}