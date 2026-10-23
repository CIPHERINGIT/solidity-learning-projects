// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../StorageFactory.sol";

contract StorageFactoryTest is Test {
    StorageFactory factory;

    function setUp() public {
        factory = new StorageFactory();
    }

    function testCreateSimpleStorageContract() public {
        factory.createSimpleStorageContract();

        assertEq(
            address(factory.listOfSimpleStorageContracts(0)),
            address(factory.listOfSimpleStorageContracts(0))
        );
    }

    function testStoreAndReadNumber() public {
        factory.createSimpleStorageContract();

        factory.sfStore(0, 42);

        assertEq(factory.sfGet(0), 42);
    }

    function testIndependentStorage() public {
        factory.createSimpleStorageContract();
        factory.createSimpleStorageContract();

        factory.sfStore(0, 10);
        factory.sfStore(1, 25);

        factory.sfStore(0, 50);

        assertEq(factory.sfGet(0), 50);
        assertEq(factory.sfGet(1), 25);
    }
}
