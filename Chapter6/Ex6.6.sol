// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Student {
    string public schoolName = "The University of Solidity";
    string public major;
    constructor(string memory _major) {
        major = _major;
    }
}

contract ArtStudent is Student("Art") {

}

contract MusicStudent is Student {
    string internal degree = "Music";
    constructor() Student(degree){
    }
}

contract MathStudent is Student {
    constructor(string memory _major) Student(_major){
    }
}
