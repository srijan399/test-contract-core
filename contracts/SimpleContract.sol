// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract SimpleCounter {
    // State variable to store the counter value
    uint256 private count;

    // Event emitted when counter is incremented
    event CounterIncremented(uint256 newCount);

    // Event emitted when counter is decremented
    event CounterDecremented(uint256 newCount);

    // Constructor to initialize the counter (optional)
    constructor() {
        count = 0;
    }

    // Function to increment the counter
    function increment() public {
        count += 1;
        emit CounterIncremented(count);
    }

    // Function to decrement the counter
    function decrement() public {
        require(count > 0, "Counter cannot go below zero");
        count -= 1;
        emit CounterDecremented(count);
    }

    // Function to get the current counter value
    function getCount() public view returns (uint256) {
        return count;
    }

    // Function to reset the counter to zero
    function reset() public {
        count = 0;
        emit CounterIncremented(count);
    }

    // Function to set the counter to a specific value
    function setCount(uint256 _newCount) public {
        count = _newCount;
        emit CounterIncremented(count);
    }
}
