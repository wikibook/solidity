// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex3_17 {
    
    uint public a = 3;

    function myFun1() external view returns(uint,uint) {
        uint b = 4;
        return (a,b);
    }
    
    /*
    function myFun2() external pure returns(uint) {
        return b;
    }
    */
}
