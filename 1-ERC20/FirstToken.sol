pragma solidity 0.8.17;


// contracts/OceanToken.sol
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract FirstToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("FirstToken", "FTK") {
        _mint(msg.sender, initialSupply);
    }
}