// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract quiz3 {

   uint private num = 10;

   function doubledNum() public returns(uint){
       num = num * 2;
       return num;
   } 

}
