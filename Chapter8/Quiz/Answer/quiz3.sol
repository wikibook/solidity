// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract quiz3 {

    enum Switch {
        turnOff,
        turnOn
    }
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