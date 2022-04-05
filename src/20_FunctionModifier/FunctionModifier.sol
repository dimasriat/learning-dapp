// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract FunctionModifier {
    address public owner;
    uint256 public x;
    bool public locked;

    constructor() {
        // set the transaction sender as the owner of the contract
        owner = msg.sender;
    }

    // modifier to check that the caller is the owner of the contract
    modifier onlyOwner() {
        require(msg.sender == owner, "You are not owner, gtfo");
        // underscore is a special characer only used inside
        // a function modifier and it tells solidity to
        // execute the rest of the code
        _;
    }

    // modifier can take inputs. This modifier checks that the
    // address passed in isn't the zero address
    modifier validAddress(address _addr) {
        require(_addr != address(0));
        _;
    }

    function changeOwner(address _newOwner)
        public
        onlyOwner
        validAddress(_newOwner)
    {
        owner = _newOwner;
    }

    // this modifier prevents a function from being called while
    // it is still executing
    modifier noReentrancy() {
        require(!locked, "no reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint256 i) public noReentrancy {
        x -= i;
        if (i > 1) {
            decrement(i - 1);
        }
    }
}
