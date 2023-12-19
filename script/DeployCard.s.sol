// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {Script} from "forge-std/Script.sol";
import {CardV1} from "../src/CardV1.sol";
import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";

contract DeployCard is Script {
    function run() external returns (address) {
        address proxy = deployCard();
        return proxy;
    }

    function deployCard() public returns (address) {
        vm.startBroadcast();
        CardV1 card = new CardV1();
        ERC1967Proxy proxy = new ERC1967Proxy(address(card), "");
        vm.stopBroadcast();
        return address(proxy);
    }
}
