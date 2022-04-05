// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

contract B is A {
    // override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
}

contract C is A {
    // override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}

contract D is B, C {
    // D.foo() return "C"
    // since C is the right most parrent contract with foo()
    function foo() public pure override(B, C) returns (string memory) {
        return super.foo();
    }
}

contract E is C, B {
    // E.foo() return "B"
    // since B is the right most parrent contract with foo()
    function foo() public pure override(C, B) returns (string memory) {
        return super.foo();
    }
}

// inheritance must be ordered from "most basic-like" to "most-derived"
// swapping the order of A and B will throw a compilation error
contract F is A, B {
    function foo() public pure override(A, B) returns (string memory) {
        return super.foo();
    }
}
