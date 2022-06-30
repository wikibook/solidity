// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex3_15 {
    
    function myFun(string memory str) 
        public 
        pure 
        returns(
            uint, 
            string memory, 
            bytes memory
        )
    {
        uint num = 99;
        bytes memory byt = hex"01";
        return (
            num,
            str,
            byt
        );
    }
}
