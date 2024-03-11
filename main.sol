// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
Smart Contract Project
For this project, write a smart contract that implements the require(), assert() and revert() statements.
*/
contract ErrorHandling {

  uint public value;

  constructor(uint initialValue) public {
    value = initialValue;
  }

  function setValue(uint newValue) public {
    // Enforce a minimum value with require
    require(newValue >= 100, "Value must be at least 100");

    value = newValue;
  }

  function addToValue(uint amount) public {
    // Check for overflow with assert
    assert(value + amount >= value); // This will always be true mathematically, but helps catch potential overflow bugs during development

    value += amount;
  }

  function subtractFromValue(uint amount) public {
    // Revert if insufficient balance with revert
    if (value < amount) {
      revert("Insufficient balance");
    }
    value -= amount;
  }
}
