// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Student {
    string public schoolName = "The University of Solidity";
}

contract ArtStudent is Student {
    function changeSchoolName() public {
        schoolName = "The University of Blockchain";
    }
    function getSchoolName() public view returns(string memory){
        return schoolName;
    }
}

