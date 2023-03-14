pragma solidity 0.6.12;

// SPDX-License-Identifier: GPL-3.0-only

import "@openzeppelin/contracts/presets/ERC20PresetMinterPauser.sol";

contract FISToken is ERC20PresetMinterPauser {
    constructor() ERC20PresetMinterPauser("StaFi", "FIS") public {}
}