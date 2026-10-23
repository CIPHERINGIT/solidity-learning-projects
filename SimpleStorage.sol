// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleStorage {
    uint256 public number;

    function setNumber(uint256 _number) public {
        number = _number;
    }

    function increment() public {
        number += 1;
    }
}
