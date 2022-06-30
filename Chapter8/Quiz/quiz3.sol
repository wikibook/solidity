// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract quiz3 {

    /*

        해당 조건에 맞는 이넘을 만들어 보세요.  
    
    */

    Switch public lightStatus = Switch.turnOn;
    function turnOnTheLight() public {
        require(lightStatus == Switch.turnOff, "The Light must be turned off");
        lightStatus = Switch.turnOn;
    }
    
    function turnOffTheLight() public {
        require(lightStatus == Switch.turnOn, "The Light must be turned on");
        lightStatus = Switch.turnOff;
    }
}
