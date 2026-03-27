// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import "../lib/openzeppelin-contracts/contracts/access/Ownable.sol";

contract StakingApp is Ownable {
    // Variables
    address public stakingTokenAdress;

    // Construct
    constructor(address stakingTokenAdress_, address ownerAdress_) Ownable(ownerAdress_) {
        stakingTokenAdress = stakingTokenAdress_;
    }
}
