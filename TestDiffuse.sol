// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.3.2 (token/ERC20/ERC20.sol)

pragma solidity >=0.5.16;

interface Balance {
    function balanceOf(address account) external view returns (uint256);
}

contract TestDiffuse is Balance {
    mapping(address => uint256) private balances;

    uint256 private _totalSupply = 2000000;
    string private name;
    string private symbol;
    uint8 public decimals;
    
    constructor(string memory name_, string memory symbol_, uint8 decimals_) {
        name = name_;
        symbol = symbol_;
        decimals = decimals_;
    }
    function getBalance(address _tokenAddress, address _addressToQuery) view public returns (uint) {
        return Balance(_tokenAddress).balanceOf(_addressToQuery);
    }
    
    function balanceOf(address account) public view virtual override returns (uint256) {
        return balances[account];
    }
}
