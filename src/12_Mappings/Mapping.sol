// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping {
    mapping(address => uint256) public myMap;

    function get(address _addr) public view returns (uint256) {
        // mapping always return a value
        // if the value is never set, it'll return default value
        return myMap[_addr];
    }

    function set(address _addr, uint256 _i) public {
		// update value at this address
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
		// reset the value to the default value
        delete myMap[_addr];
    }
}
