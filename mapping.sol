// SPDX-License-Identifier: UNLICENSED
pragma solidity <0.9.1;

contract Test{
    mapping (uint => uint) public myMapping ;
    function testMapSet() public {
        assert(myMapping[5] == 0);
        myMapping[5] = 7;
        assert(myMapping[5] == 7);
        }
}