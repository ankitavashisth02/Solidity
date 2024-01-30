// SPDX-License-Identifier: UNLICENSED
pragma solidity <0.9.1;

contract Test{
    uint public num=10;

    modifier checkValue(bool value){
         require(true == value, "not valid");
        _;
    }
    function one(bool value) public checkValue(value) {
        num=1;
    }
    function two(bool value) public checkValue(value) {
        num=2;
    }
}