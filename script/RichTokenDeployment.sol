// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/RichToken.sol";

contract DeployRich is Script {
    function run() external {
        uint256 forkId = vm.createFork("https://arbitrum.drpc.org");
        vm.selectFork(forkId);
        vm.startBroadcast(vm.envUint("PRIVATE_KEY_ADMIN"));

        // // Deploy the contract
        address initDistributor = vm.envAddress("INIT_DISTRIBUTOR");
        RichToken richToken = new RichToken(initDistributor);

        console.log("Rich address: ", address(richToken));
        console.log("Init distributor address: ", initDistributor);
        console.log("Rich int distributor balance: ", richToken.balanceOf(initDistributor));
        console.log("Rich total supply: ", richToken.totalSupply());
        console.log("Rich name: ", richToken.name());
        console.log("Rich symbol: ", richToken.symbol());

        vm.stopBroadcast();
    }
}