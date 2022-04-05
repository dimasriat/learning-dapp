// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Counter {
    uint256 public count;

    function inc(uint256 _x) public {
        count += _x;
    }

    function dec(uint256 _x) public {
        count -= _x;
    }
}
