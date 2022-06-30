// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_8 {
   
    function fun1() public pure returns(uint) {
       uint result = 0;
       uint a = 0;
       do{
           result = result + a;
           ++a;
       }while(a<3);

       return result;
    }
}
