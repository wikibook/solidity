// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Math {
    function division(uint _num1, uint _num2) public pure returns(uint)  {
        return _num1/_num2;
    }
}

contract Ex7_5 {
    event Information(string _error);
    Math math = new Math();
    function divisionWithTryCatch(uint _num1, uint _num2) public returns(uint) {
        try math.division(_num1, _num2) returns (uint result) {
            emit Information("Success");
            return(result);
        } catch {
            emit Information("Failure");
            return(0);
        }
    }
    
}