// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (governance/TimelockController.sol)

pragma solidity ^0.8.0;

import '@openzeppelin/contracts/governance/TimelockController.sol';

import './TokenContract.sol';

contract MyTimelockController is TimelockController {
  uint256 minAmount;

  constructor(
    uint256 minDelay,
    address[] memory proposers,
    address[] memory executors,
    address admin,
    uint256 _minAmount
  ) TimelockController(minDelay, proposers, executors, admin) {
    minAmount = _minAmount;
  }
}
