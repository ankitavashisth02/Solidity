// SPDX-License-Identifier: UNLICENSED

pragma solidity <0.9.1;

contract Test{
    uint[5] public arr;

    function addNumber(uint index, uint _element) public {
        arr[index]=_element;
    }

    function totalNumber() public view returns(uint){
        return arr.length;
    }

    function getElement(uint index) public view returns(uint){
        return arr[index];
    }
    
}