pragma solidity ^0.6.0;
// SPDX-License-Identifier: GPL-3.0-only
import "./TransparentUpgradeableProxy.sol";

contract BEP20UpgradeableProxy is TransparentUpgradeableProxy {

    constructor(address logic, address admin, bytes memory data) TransparentUpgradeableProxy(logic, admin, data) public {

    }

}