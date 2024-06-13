// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {
    // Public variables to store token details
    string public name = "METACRAFTERS";
    string public symbol = "MTCS";
    uint public totalSupply;

    // Mapping to store balances
    mapping(address => uint) public balances;

    // Function to mint tokens
    function mint(address _account, uint _amount) public {
        totalSupply += _amount;
        balances[_account] += _amount;
    }

    // Function to burn tokens
    function burn(address _account, uint _amount) public {
        require(balances[_account] >= _amount, "Insufficient balance");
        totalSupply -= _amount;
        balances[_account] -= _amount;
    }
}
