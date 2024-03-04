// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
Smart Contract Project
For this project, write a smart contract that implements the require(), assert() and revert() statements.
*/

contract ErrorHandlingContract {
    address public owner;
    uint256 public value;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function setValue(uint256 _newValue) external onlyOwner {
        // Using require statement
        require(_newValue > 0, "Value must be greater than zero");
        
        // Using assert statement
        assert(_newValue < type(uint256).max);

        // Setting the new value
        value = _newValue;
    }

    function divide(uint256 _numerator, uint256 _denominator) external view returns (uint256) {
        // Using require statement to check for division by zero
        require(_denominator > 0, "Cannot divide by zero");

        // Performing the division
        uint256 result = _numerator / _denominator;

        return result;
    }
}
