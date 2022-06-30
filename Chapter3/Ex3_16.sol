// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex3_16 {
    
    function myFun(string calldata str) external pure returns(string memory){
        return str;
    }
}
