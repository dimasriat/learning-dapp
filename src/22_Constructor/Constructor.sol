// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract X {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

// there are 2 ways to initialize parent contract with parameters

// 1 - pass the parameter here in the inheritance list
contract B is X("input to X"), Y("input to Y") {

}

// 2 - or like this
contract C is X, Y {
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}

// both of two below's order of constructor called
// 1. x		2. y		3. D / E
contract D is X, Y {
    constructor() X("X was called") Y("Y was called") {}
}

contract E is X, Y {
    constructor() Y("YEETT") X("XXXX") {}
}
