// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex3_20 {

    function funExt() external pure returns(uint) {
        return 2;
    }

    function outPutExt() public view returns(uint) {
        return this.funExt();
    } 
     
}


