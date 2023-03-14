pragma solidity 0.6.12;

// SPDX-License-Identifier: GPL-3.0-only

import "../bep20/BEP20PresetMinterPauser.sol";

contract BEP20RDOTToken is BEP20PresetMinterPauser {
    constructor() BEP20PresetMinterPauser("StaFi", "rDOT") public {}
}
