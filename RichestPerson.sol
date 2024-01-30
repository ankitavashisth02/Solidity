// SPDX-License-Identifier: UNLICENSED
pragma solidity <0.9.1;

contract RichestPerson {
    address payable public manager;
    mapping(address => uint) public persons;
    bool destroyed;

    modifier isDestroyed{
        require(destroyed != true, "contract is destroyed");
        _;
    }


}