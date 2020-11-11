pragma solidity ^0.6.0;

import "@openzeppelin/contracts/presets/ERC20PresetMinterPauser.sol";

contract FISToken is ERC20PresetMinterPauser {
    constructor() ERC20PresetMinterPauser("StaFi", "FIS") public {}
}