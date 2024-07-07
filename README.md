# ETH-AVAX_PROOF
Module 1 Project: Functions and Errors

# OwnershipContract

This Solidity contract demonstrates ownership verification. It includes functions to ensure only the contract owner can perform certain actions.

## Overview

The `OwnershipContract` ensures that only the owner can execute specific functions. Ownership is verified using the `msg.sender`.

## Contract Details

### State Variables

- `address public contractOwner`:
  - This variable holds the address of the contract owner and is set to the address that deploys the contract.

### Constructor

- `constructor()`:
  - Executed once during contract deployment, it sets `contractOwner` to the address of the deployer (`msg.sender`).

### Functions

- `function verifyOwner() public view`:
  - Verifies if the caller is the contract owner using the `require` statement. If not, it reverts with "Only the owner can call this function."

- `function validateOwner() public view`:
  - Checks ownership using an `if` statement. If `msg.sender` is not `contractOwner`, it reverts with "The caller is not the owner."

- `function assertOwner() public view`:
  - Uses the `assert` statement to check if the caller is the owner. If `msg.sender` is not `contractOwner`, it triggers an assertion failure.

## Usage

To use this contract:

1. Deploy it to a blockchain network.
2. The deployer's address will be assigned as `contractOwner`.
3. The functions `verifyOwner`, `validateOwner`, and `assertOwner` can be called to check ownership. These functions will revert if the caller is not the owner.
