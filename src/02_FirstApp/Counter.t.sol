// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "lib/ds-test/src/test.sol";
import "./Counter.sol";

contract TestCounter is DSTest {
    Counter sc;

	// fungsi setUp() akan dijalankan diawal tiap kali memanggil fungsi testNamaTestBlaBlaBla()
	// jadi semua statenya keulang dari awal
    function setUp() public {
        sc = new Counter();
    }

    function testDefaultValue() public {
		// sc.count == 0 (default value)
        assertEq(sc.count(), 0);
    }

    function testIncreaseValue() public {
		// sc.count == 0 (default value)
		// sc.count + 7 = 7
        sc.inc(7);
        assertEq(sc.count(), 7);
    }

    function testDecreaseValue() public {
		// sc.count == 0 (default value)
		// sc.count + 100 = 100
        sc.inc(100);
		// sc.count - 3 = 100 - 3 = 97
        sc.dec(3);
        assertEq(sc.count(), 97);
    }
}
