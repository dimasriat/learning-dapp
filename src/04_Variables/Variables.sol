// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/**
 *	@dev Ada 3 jenis variabel dalam solidity
 *		1. Local:	- dideklarasikan di dalam fungsi
 *					- tidak disimpan di blockchain
 *
 *		2. State:	- dideklarasikan di luar fungsi
 *					- di simpan di dalam blockchain
 *
 *		3. global:	- menyimpan informasi blockchain secara umum
 */
contract Variables {
    /** @dev State variable disimpan di dalam blockchain */
    string public text = "gm!";
    uint256 public num = 123;

    function doSomething() public {
        /** @dev local variables tidak di simpan di dalam blockchain */
        uint256 i = 300;

        /** @dev berikut ini adalah varible global */
        uint256 timestamp = block.timestamp;
        address sender = msg.sender;
    }
}
