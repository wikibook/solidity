// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex3_13 {
    
    uint public a = 3;
    function myFun() public view returns(uint){
        a = 4;
        return a;
    }
}
