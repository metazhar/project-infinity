// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// import {ERC4626} from "openzeppelin-contracts/contracts/token/ERC20/extensions/ERC4626.sol";

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

// Uses ERC-4626 for tracking total deposits/withdraws and total assets

/* is ERC4626 */ contract PerpetualExchange {
    // Errors
    error DepositLessThanMinimumDepositAmount();

    // Constants
    uint256 constant MINIMUM_DEPOSIT_AMOUNT = 100000000000000000; // 0.1 ETH

    // State Variables
    mapping(address => uint256) public liquidityDeposits; // maps LP address to amount of liquidity deposited

    // Position Struct
    struct Position {
        address trader;
        uint256 size;
        uint256 collateral;
        bool isLong;
    }

    // LP - Deposit Liquidity
    function depositLiquidity(uint256 amount) external payable {
        // Perform Validations
        if (amount < MINIMUM_DEPOSIT_AMOUNT) {
            revert DepositLessThanMinimumDepositAmount();
        }
        // Deposit Liquidity into Vault -
        //  For now, just store it in the contract and update a mapping
        liquidityDeposits[msg.sender] += amount;
        // Mint Tokens to represent LP's share of the Vault
        // mint(msg.sender, amount); // ERC-4626
    }

    // LP - Withdraw Liquidity
    function withdrawLiquidity() external {
        // Perform Validations
        // Burn Tokens representing LP's share of the Vault
        // Withdraw Liquidity from Vault -
        //   For now, send from contract and update a mapping
        // Return Liquidity to LP
    }

    // Traders
    // Deposit and Withdraw Collateral
    function depositCollateral() external payable {}

    function withdrawCollateral() external {}

    // Open a Position
    function openPosition() external {}

    // Increase the Size of a Position
    function increasePositionSize() external {}

    // Increase the Collateral of a Position
    function increasePositionCollateral() external {}

    // Price Oracle
    // Get the Realtime Price of the Asset Being Traded
}
