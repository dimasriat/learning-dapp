// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract HelloWorld {
    string public message = "gm!";
    uint256 public hohohihe = 69;

    function getMessage() public view returns (string memory) {
        return message;
    }
}
