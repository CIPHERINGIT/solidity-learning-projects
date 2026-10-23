
# StorageFactory Testing Plan

## Test 1: Contract Creation
- Create a SimpleStorage contract.
- Verify one contract is stored in the factory.

## Test 2: Store and Read
- Create a contract.
- Store 42 at index 0.
- Verify the value is 42.

## Test 3: Independent Storage
- Create two contracts.
- Store 10 in contract 0.
- Store 25 in contract 1.
- Update contract 0 to 50.
- Verify contract 0 returns 50.
- Verify contract 1 still returns 25.

## Test 4: Invalid Index
- Read an index that does not exist.
- Verify the call reverts.
