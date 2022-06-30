// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract Student {
   
    function major() public pure virtual returns(string memory) {
        return "Math";
    }

}

contract ArtStudent is Student {

   function major() public pure override returns(string memory) {
        return "Art";
    }

}
