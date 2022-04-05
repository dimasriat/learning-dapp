// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Enum {
    // This enum represent shipping status
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // default value == enum index 0 which is 'Pending'
    Status public status;

    // return uint
    // Pending == 0
    // Shipped == 1
    // Accepted == 2
    // Rejected == 3
    // Canceled == 4
    function get() public view returns (Status) {
        return status;
    }

    // update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    // you can update specific enum like this
    function cancel() public {
        status = Status.Canceled;
    }

    // delete resets the enum to its first value --> 0
    function reset() public {
        delete status;
    }
}
