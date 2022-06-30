// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex9_8 {

    constructor() payable {

    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}