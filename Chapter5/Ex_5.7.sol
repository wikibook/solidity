// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex5_7 {
    
    struct Human {
        string name;
        uint age;
        string job;
    }

    Human public human1 = Human("ploy", 25, "artist");
    Human public human2;
    
    function getHuman1() public view returns(Human memory){
        return human1;
    } 
    
    function getHuman2() public view returns(Human memory){
        return human2;
    } 

    function initializeHuman2(string memory _name, uint _age, string memory _job) public {
        human2 = Human(_name, _age, _job);
    } 

    function changeJobHuman1(string memory _job) public {
        human1.job = _job;
    }

    function getNameHuman1() public view returns(string memory){
        return human1.name;
    }  

 
    
}
