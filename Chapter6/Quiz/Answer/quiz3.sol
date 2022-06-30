// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Student {

    function university() public pure virtual returns(string memory) {
        return "The University of Solidity";
    }

}
contract quiz3 is Student {

    function university() public pure override returns(string memory) {
        return "The university of Blockchain";
    }

}