// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ABTether is ERC20 {
    constructor() ERC20("AB Tether", "AUSDT") {
        _mint(msg.sender, 10000000 * 10 ** decimals());
    }

    function decimals() public view virtual override returns (uint8) {
        return 6;
    }

    function faucets() public {
        _mint(msg.sender, 10 * 10 ** decimals());
    }
}