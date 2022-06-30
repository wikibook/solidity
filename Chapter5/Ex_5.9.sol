// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex5_9 {

    uint public a = 3;
    uint public b = a;

    function changeA() public returns(uint, uint) {
        a = 5;
        return(a, b);
    }

    function changeInput(uint[] memory _input) public pure returns(uint[] memory,uint[] memory) {
        uint[] memory copyInput = _input;
        copyInput[0] = 11; 
        return (_input,copyInput); 
    }
    

}