// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.6.0;
pragma experimental ABIEncoderV2;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ERC20 } from '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract HaloToken is ERC20, Ownable {

    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) public {

    }

    function mint(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) external onlyOwner {
        _burn(account, amount);
    }
}
