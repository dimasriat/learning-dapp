// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Array {
    // several ways to initialize an array
    uint256[] public arr;
    uint256[] public arr2 = [1, 2, 3];
    //fixed size array, all elements, initialize to 0
    uint256[10] public myFixedArray;

    function get(uint256 _i) public view returns (uint256) {
        return arr[_i];
    }

    // solidity can return the entire array
    // but this function should be avoided for
    // arrays that can grow indefinitely in length
    function getArr() public view returns (uint256[] memory) {
        return arr;
    }

    function push(uint256 _i) public {
        // append to array
        // this will increase the array length by 1
        arr.push(_i);
    }

    function pop() public {
        // remove last element from array
        // this will decrease the array length by 1
        arr.pop();
    }

    function getLength() public view returns (uint256) {
        return arr.length;
    }

    function remove(uint256 _index) public {
        // delete does not change the array length
        // it resets the value at index to it's default value
        // in this case --> 0
        delete arr[_index];
    }

    function examples() external pure{
        // create array in memory, only fixed size can be created
        uint256[] memory a = new uint256[](5);
    }
}
