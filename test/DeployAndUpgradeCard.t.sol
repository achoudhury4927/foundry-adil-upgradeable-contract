// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {Test} from "forge-std/Test.sol";
import {CardV1} from "../src/CardV1.sol";
import {CardV2} from "../src/CardV2.sol";
import {DeployCard} from "../script/DeployCard.s.sol";
import {UpgradeCard} from "../script/UpgradeCard.s.sol";

contract DeployAndUpgradeCard is Test {
    DeployCard public deployer;
    UpgradeCard public upgrader;

    function setUp() public {
        deployer = new DeployCard();
        upgrader = new UpgradeCard();
    }

    function test_CardV1_Version() public {
        address proxyAddress = deployer.deployCard();
        assertEq(1, CardV1(proxyAddress).version());
    }

    function test_CardV1_Deployment() public {
        address proxyAddress = deployer.deployCard();
        vm.expectRevert();
        CardV2(proxyAddress).setNumber(1);
    }

    function test_Upgrade_To_CardV2() public {
        address proxyAddress = deployer.deployCard();
        CardV2 cardV2 = new CardV2();

        vm.prank(CardV1(proxyAddress).owner());
        CardV1(proxyAddress).transferOwnership(msg.sender);

        address proxy = upgrader.upgradeCard(proxyAddress, address(cardV2));

        uint256 expectedValue = 2;
        assertEq(expectedValue, CardV2(proxy).version());

        CardV2(proxy).setNumber(expectedValue);
        assertEq(expectedValue * 2, CardV2(proxy).getNumber());
    }
}
