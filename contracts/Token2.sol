// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

contract Token2 {
    uint256 public balance0;
    uint256 public balance1;
    uint256 public totalSupply;

    constructor(uint256 totalSupply_) {
        balance0 = totalSupply_;
        totalSupply = totalSupply_;
    }

    function transfer(uint256 amount) public {
        if (msg.sender == address(0)) {
            balance0 -= amount;
            balance1 += amount;
        } else {
            balance1 -= amount;
            balance0 += amount;
        }
    }

    function rule_maxBalanceLessThanTotalSupply() external view {
        assert(balance0 <= totalSupply);
        assert(balance1 <= totalSupply);
        assert(balance0 + balance1 == totalSupply);
    }
}
