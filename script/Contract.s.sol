// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { Script } from "forge-std/Script.sol";
import {CrowdFunding} from "../contracts/CrowdFunding.sol";

contract ContractScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        new CrowdFunding();
        vm.stopBroadcast();
    }
}


// Exporting variables in GitBash:

// export PRIVATE_KEY=0x...
// echo $PRIVATE_KEY (to call)


// LocalNetwork (anvil, localhost):

// command - forge script script/Contract.s.sol:ContractScript --fork-url http://localhost:8545 --private-key $PRIVATE_KEY (for simulation)
// command - forge script script/Contract.s.sol:ContractScript --fork-url http://localhost:8545 --private-key $PRIVATE_KEY --broadcast (for deployment)

// Test Network (get private_key and rpc_url from that test network and store it down in variables)

// command - forge script script/Contract.s.sol:ContractScript --rpc-url $RPC_URL --private-key $PRIVATE_KEY --broadcast