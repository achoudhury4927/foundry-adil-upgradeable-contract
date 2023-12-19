// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {Script} from "forge-std/Script.sol";
import {CardV1} from "../src/CardV1.sol";
import {CardV2} from "../src/CardV2.sol";
import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import {DevOpsTools} from "lib/foundry-devops/src/DevOpsTools.sol";

contract UpgradeCard is Script {
    function run() external returns (address) {
        address mostRecentlyDeployedProxy = DevOpsTools.get_most_recent_deployment("ERC1967Proxy", block.chainid);
        vm.startBroadcast();
        CardV2 newCard = new CardV2();
        vm.stopBroadcast();
        address proxy = upgradeCard(mostRecentlyDeployedProxy, address(newCard));
        return proxy;
    }

    function upgradeCard(address proxyAddress, address newCard) public returns (address) {
        vm.startBroadcast();
        CardV1 proxy = CardV1(proxyAddress);
        proxy.upgradeToAndCall(address(newCard), "");
        vm.stopBroadcast();
        return address(proxy);
    }
}
