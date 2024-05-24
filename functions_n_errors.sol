// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

// Contract successfully uses require()
// Contract successfully uses assert()
// Contract successfully uses revert() statements

contract errors {
    function requireFunc (uint i) public {
        require(i > 20, "input should be greater than 20");
    }
    function revertFunc(uint i) public {
        if (i > 10) {
            revert("i should should be less than 10");
        }
    }
    function assertFunc(uint x) public {
        assert(x == 100);
    }
}
