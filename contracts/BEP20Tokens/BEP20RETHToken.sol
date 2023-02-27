pragma solidity 0.6.4;

// SPDX-License-Identifier: GPL-3.0-only

import "../bep20/BEP20PresetMinterPauser.sol";

contract BEP20RETHToken is BEP20PresetMinterPauser {
    constructor() BEP20PresetMinterPauser("StaFi", "rETH") public {}
}
