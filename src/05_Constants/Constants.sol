// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/**
 *	Constant adalah variabel yang gak bisa diubah.
 *	Isi dari constant langsung dicoding di soliditynya.
 *	Constant bisa menghemat gas fee
 */
contract Constants {
    /** @dev coding constant ada conventionnya: DI CAPSLOCK SEMUA YA */
    address public constant DEAD_ADDRESS =
        0x000000000000000000000000000000000000dEaD;
    uint256 public constant MY_UINT = 69420;
}
