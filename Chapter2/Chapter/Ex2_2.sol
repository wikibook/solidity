// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract Ex2_2 {
    string a = 'Hello';
    uint b = 5;
    uint c = 5;
    uint d = 5;
    uint e = 5;
    uint f = 5;

    function assignment() public returns(string memory, uint, uint, uint, uint, uint) {
        
        a = 'Hello Solidity'; 
        b += 2; // b = b + 2
        c -= 2; // c = c - 2
        d *= 2; // d = d * 2
        e /= 2; // e = e / 2
        f %= 2; // f = f % 2    
        return(a, b, c, d, e, f);
    
    }
}
