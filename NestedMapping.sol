// SPDX-License-Identifier: UNLICENSED

pragma solidity <0.9.1;

contract Mapping{
    mapping(address=>mapping(address=>bool)) public ownership;

    function provideOwnership(address sender, address receiver) public {
        ownership[sender][receiver]=true;
    }

    function takeOwnership(address sender, address receiver) public {
        ownership[sender][receiver]=false;
    }
}