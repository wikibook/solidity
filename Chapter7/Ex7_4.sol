// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Adult {
    uint public age;
    constructor(uint _age) {
        require(_age>19, "Should be more than 19 years old");
        age = _age;
    }
}

contract Ex7_4 {
    event Information(string _error);
    
    function instantiate(uint _age) public returns(uint) {
        try new Adult(_age) returns(Adult adult) {
            emit Information("Success");
            return(adult.age());
        }catch {
            emit Information("Failed : the default age is 20");
            Adult adult = new Adult(20);
            return(adult.age());
        }
    }
}