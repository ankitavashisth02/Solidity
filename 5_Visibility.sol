// SPDX-License-Identifier: UNLICENSED
pragma solidity <0.9.1;

contract Test{
    function f1() public pure returns(uint){
        return 1;
    }
    function f2() private pure returns(uint){
        return 2;
    }
    function f3() external pure returns(uint){
        return 3;
    }
    function f4() internal pure returns(uint){
        return 4;
    }
} 