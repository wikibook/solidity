// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex3_12 {
    uint public a = 4;
    function myFun() public view returns(uint){
        uint b = a + 5;
        return b;
    }
}
