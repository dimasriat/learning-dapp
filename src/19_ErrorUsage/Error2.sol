// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Account {
    uint256 public balance;
    uint256 public constant MAX_UINT = 2**256 - 1;

    function deposit(uint256 _amount) public {
        uint256 oldBalance = balance;
        uint256 newBalance = balance + _amount;
        // balance + _amount does not overflow if balance + _amount >= balance
        require(newBalance >= oldBalance, "overflow");
        balance = newBalance;
        assert(balance >= oldBalance);
    }

    function withdraw(uint256 _amount) public {
        uint256 oldBalance = balance;
        // balance - _amount doesn't overflow if balance >= _amount
        if (balance < _amount) {
            revert("underflow");
        }
        balance -= _amount;
        assert(balance <= oldBalance);
    }
}
