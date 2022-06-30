// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract quiz1 {
    
    mapping(address => string) public name; 

    function addName(address _key, string memory _name) public {
        name[_key] = _name;
    }

    function getName(address _key) public view returns(string memory) {
        return name[_key];
    }

    function deleteName(address _key) public {
        delete name[_key];
    }

}
