pragma solidity ^0.6.0;

import "./openzeppelin/ERC20.sol";

contract FISToken is ERC20 {
    constructor() ERC20("Stafi", "FIS") public {
    }
}