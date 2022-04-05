// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Function {
    // function can return multiple values
    function returnMany()
        public
        pure
        returns (
            uint256,
            bool,
            uint256
        )
    {
        return (6, true, 9);
    }

    // return values can be named
    function named()
        public
        pure
        returns (
            uint256 s,
            bool e,
            uint256 x
        )
    {
        return (6, true, 9);
    }

    // return values can be assigned to their name
    // in this case the return statement can be omitted
    function assigned()
        public
        pure
        returns (
            uint256 s,
            bool e,
            uint256 x
        )
    {
        s = 6;
        e = true;
        x = 9;
    }

    // use destructuring assignment when calling an other
    // function that returns multiple values
    function destructuringAssignments()
        public
        pure
        returns (
            uint256,
            bool,
            uint256,
            uint256,
            uint256
        )
    {
        (uint256 s, bool e, uint256 x) = returnMany();
        (uint256 b, , uint256 j) = (4, 5, 6);
        return (s, e, x, b, j);
    }

    // cannot use map for either input or output
    // can use array for input
    function arrayInput(uint256[] memory _arr) public {}

    //can use array for output
    uint256[] public arr;

    function arrayOutput() public view returns (uint256[] memory) {
        return arr;
    }
}
