pragma solidity >=0.6.0 <0.8.0;

// SPDX-License-Identifier: GPL-3.0-only

import "./BEP20.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";

/**
 * @dev BEP20 token with pausable token transfers, minting and burning.
 *
 * Useful for scenarios such as preventing trades until the end of an evaluation
 * period, or having an emergency switch for freezing all token transfers in the
 * event of a large bug.
 */
abstract contract BEP20Pausable is BEP20, Pausable {
    /**
     * @dev See {BEP20-_beforeTokenTransfer}.
     *
     * Requirements:
     *
     * - the contract must not be paused.
     */
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual override {
        super._beforeTokenTransfer(from, to, amount);

        require(!paused(), "BEP20Pausable: token transfer while paused");
    }
}
