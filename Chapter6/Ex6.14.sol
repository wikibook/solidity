//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ArtStudent {
    uint public Times = 7; 
    function time() public pure returns(uint) {
        return 3;
    }
}
contract PartTimer {
    function time() public pure returns(uint) {
        return 3;
    }
}

contract Alice is ArtStudent, PartTimer {
    uint public Times = 2; 
}

