// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Layout of Contract
// __________________________
// version
// imports
// errors
// interfaces, libraries, contracts
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// internal & private view & pure functions
// external & public view & pure functions

// Requirements
// __________________________
// Liquidity Provider Requirements
// - Liquidity Providers can deposit and withdraw liquidity.

// Price Oracle Requirements
// - A way to get the realtime price of the asset being traded.

// Trader Requirements
// - Traders can open a perpetual position for BTC, with a given size and collateral.
// - Traders can increase the size of a perpetual position.
// - Traders can increase the collateral of a perpetual position.

// Constraints
// - Traders cannot utilize more than a configured percentage of the deposited liquidity.
// - Liquidity providers cannot withdraw liquidity that is reserved for positions.

// Invariants
// Traders may not open a position that uses more than a specified percentage of the deposited liquidity.
// Liquidity providers may not withdraw liquidity that is reserved for positions.

contract Vault {

}
