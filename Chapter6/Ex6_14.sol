// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

abstract contract System {
   uint internal version; 
   bool internal errorPass;
   function versionCheck() internal virtual; 
   function errorCheck() internal virtual;
   function boot() public returns(uint, bool) {
      versionCheck();
      errorCheck();
      return (version, errorPass);
   }
}
contract Computer is System {
   function versionCheck ( ) internal override {
      version = 3;
   }
   function errorCheck () internal override {
      errorPass = true;
   }
}

contract SmartPhone is System {
   function versionCheck () internal override {
      version = 25;
   }
   function errorCheck () internal override {
      errorPass = true;
   }
}
