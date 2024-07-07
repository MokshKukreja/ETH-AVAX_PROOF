// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract OwnershipContract {
    address public contractOwner;

    constructor() {
        contractOwner = msg.sender;
    }

    function verifyOwner() public view {
        require(msg.sender == contractOwner, "Only the owner can call this function.");
    }

    function validateOwner() public view {
        if (msg.sender != contractOwner) {
            revert("The caller is not the owner.");
        }
    }

    function assertOwner() public view {
        assert(msg.sender == contractOwner);
    }
}
