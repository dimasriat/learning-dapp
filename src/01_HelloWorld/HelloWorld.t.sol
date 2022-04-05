// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "lib/ds-test/src/test.sol";
import "./HelloWorld.sol";

contract TestHelloWorld is DSTest {
    HelloWorld sc;

    function setUp() public {
        sc = new HelloWorld();
    }

    function testString() public {
        string memory a = sc.getMessage();
        string memory b = "gm!";

        assertEq(a, b);
    }

    function testNumber() public {
        assertEq(sc.hohohihe(), 69);
    }
}
