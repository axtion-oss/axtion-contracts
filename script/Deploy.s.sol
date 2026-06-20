// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {ERC20Token} from "../src/token/ERC20Token.sol";

contract DeployScript is Script {
    function run() external {
        vm.startBroadcast();
        ERC20Token token = new ERC20Token(
            "My Token",
            "MTK",
            18,
            1_000_000,
            msg.sender
        );
        console.log("Deployed ERC20Token:", address(token));
        vm.stopBroadcast();
    }
}
