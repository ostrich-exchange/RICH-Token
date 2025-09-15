// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title Rich Token
 * @author Ostrich
 */
contract RichToken is ERC20 {
    /**
     * @param _initDistributor The address to which the total supply of RICH tokens will be minted.
     */
    constructor(address _initDistributor) ERC20("Ostrich", "RICH") {
        _mint(_initDistributor, 100_000_000 ether);
    }
}
