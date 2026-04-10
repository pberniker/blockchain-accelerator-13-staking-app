// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import "forge-std/Test.sol"; // => import "../lib/forge-std/src/Test.sol";
import "../src/StakingToken.sol";
import "../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

contract StakingTokenTest is Test {
    StakingToken stakingToken;
    address randomAddress = vm.addr(1);

    function setUp() public {
        string memory name = "StakingToken";    
        string memory symbol = "StK";

        stakingToken = new StakingToken(name, symbol);
    }

    function testMintSuccessfully() public {
        vm.startPrank(randomAddress);

        uint amount = 1 ether; // unidad de medida no token (alias). 1_000_000_000_000_000_000 o 10^18 o 1e18 wei

        uint previousBalance = IERC20(address(stakingToken)).balanceOf(randomAddress);
        stakingToken.mint(amount);
        uint nextBalance = IERC20(address(stakingToken)).balanceOf(randomAddress);

        assert(nextBalance - previousBalance == amount);

        vm.stopPrank();
    }
}
