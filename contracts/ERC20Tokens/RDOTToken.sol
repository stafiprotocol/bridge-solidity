pragma solidity 0.6.4;

// SPDX-License-Identifier: GPL-3.0-only

import "@openzeppelin/contracts/presets/ERC20PresetMinterPauser.sol";

contract RDOTToken is ERC20PresetMinterPauser {
    constructor() ERC20PresetMinterPauser("StaFi", "rDOT") public {}
}