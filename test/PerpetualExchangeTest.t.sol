// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import {Test} from "forge-std/Test.sol";
import {PerpetualExchange} from "src/PerpetualExchange.sol";

contract PerpetualExchangeTest is Test {
    function testDepositLiquidity() public {
        // Arrange
        PerpetualExchange exchange = new PerpetualExchange();
        uint256 amount = 100000000000000000; // 0.1 ETH
        // Act
        exchange.depositLiquidity(amount);
        // Assert
        assertEq(
            exchange.liquidityDeposits(address(this)),
            amount,
            "Liquidity deposit should be equal to amount deposited"
        );
    }
}
