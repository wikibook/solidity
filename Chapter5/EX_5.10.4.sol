// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex5_10_4 {
    
    uint[] public numbers1 = [1,2,3]; 
    uint[] public numbers2 = [1,2,3]; 

    function _push99(uint[] storage _input) internal returns(uint[] memory) {
        _input.push(99);
        _input.push(99);
        _input.push(99);
        return (_input);
    }

    function add() public  {
       _push99(numbers1);
       _push99(numbers2);
    }

    function add2() public returns(uint[] memory, uint[] memory) {
        numbers1.push(99);
        numbers1.push(99);
        numbers1.push(99);

        numbers2.push(99);
        numbers2.push(99);
        numbers2.push(99);

    }
}
