// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {Script} from "forge-std/Script.sol";
import {CardV1} from "../src/CardV1.sol";
import {CardV2} from "../src/CardV2.sol";
import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";

contract UpgradeCard is Script {
    function run() external returns (address) {
        address mostRecentlyDeployedProxy = 0xb45C4a5dFB0014692F27a02e7A8eaD3D1b823469;
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
