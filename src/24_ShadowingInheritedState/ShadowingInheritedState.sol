// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract A {
    string public name = "contract a";

    function getName() public view returns (string memory) {
        return name;
    }
}

// shadowing is disallowed in solidity 0.6
// this will not compile
// contract B is A {
	// string public name ="contract b";
// }

contract C is A {
	// this is the correct way to override inherited state variables
	constructor() {
		name = "contract c";
	}
	// C.getName() returns "contract c"
}
