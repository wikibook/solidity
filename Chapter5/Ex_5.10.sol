// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex5_10 {
    
    uint[] public numbers = [1,2,3]; 

    function _push99(uint[] storage _input) internal returns(uint[] memory) {
        uint[] storage copyInput = _input;
        copyInput.push(99);
        copyInput.push(99);
        copyInput.push(99);
        return (copyInput);
    }

    function add() public returns(uint[] memory, uint[] memory) {
        return (numbers, _push99(numbers));
    }

/*
    //error 발생
    function push77(uint[] memory _input) public {
        input.push(77);
    }
    
    //error 발생
    function map(mapping(uint=>uint) memory _input) public {
        
    }
*/

}
