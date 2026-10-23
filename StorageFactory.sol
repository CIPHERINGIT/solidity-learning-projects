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

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        listOfSimpleStorageContracts.push(simpleStorage);
    }

    function sfStore(uint256 _index, uint256 _number) public {
        SimpleStorage simpleStorage =
            listOfSimpleStorageContracts[_index];
        simpleStorage.setNumber(_number);
    }

    function sfGet(uint256 _index) public view returns (uint256) {
        SimpleStorage simpleStorage =
            listOfSimpleStorageContracts[_index];
        return simpleStorage.number();
    }
}
