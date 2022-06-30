// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex5_12 {

    uint[] public numbers = [1,2,3]; 
    uint[] public copyNumbers = numbers; 

    function add() public returns(uint[] memory, uint[] memory) {
        copyNumbers.push(99);
        return (numbers, copyNumbers);
    }

}