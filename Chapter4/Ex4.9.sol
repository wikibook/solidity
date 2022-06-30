// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_9 {
   
    function fun1() public pure returns(uint) {
       uint result = 5;
       uint a = 0;
       do{
           result = result + a;
           ++a;
       }while(a>10);

       return result;
    }
}
