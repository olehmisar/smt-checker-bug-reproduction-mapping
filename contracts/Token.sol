// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

contract Token {
    mapping(address => uint256) public balanceOf;
    uint256 public totalSupply;

    constructor(uint256 totalSupply_) {
        balanceOf[msg.sender] = totalSupply_;
        totalSupply = totalSupply_;
    }

    function transfer(address recipient, uint256 amount) public {
        balanceOf[msg.sender] -= amount;
        balanceOf[recipient] += amount;
    }

    function rule_maxBalanceLessThanTotalSupply(address account) external view {
        assert(balanceOf[account] <= totalSupply);
    }
}
