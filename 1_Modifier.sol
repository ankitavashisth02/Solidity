// SPDX-License-Identifier: UNLICENSED
pragma solidity <0.9.1;

contract Test{
    uint public num=10;

    modifier checkValue(){
         require(num>5);
        _;
    }
    function one() public checkValue() {
        num=1;
    }
    function two() public checkValue() {
        num=2;
    }
}