// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Student {

    string[] internal courses; 

    function showCourses() public virtual returns(string[] memory) {
        delete courses;
        courses.push("English");
        courses.push("Music");
        return courses;
    }
}

contract ArtStudent is Student {
   
    function showCourses() public override returns(string[] memory) {
        super.showCourses();
        courses.push("Art");
        return courses;
    }
}

