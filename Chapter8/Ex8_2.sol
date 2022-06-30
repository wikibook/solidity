// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Ex8_2 {

    uint public a;
    uint public b;

    modifier plusA() {
        a = a + 1;
        _;
    }

    modifier plusB() {
        _;
        b = b + 1;
    }

    function mulA() public plusA() {
        a = a * 2;
    }
    function mulB() public plusB() {
        b = b * 2;
    }

}