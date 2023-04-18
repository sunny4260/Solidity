pragma solidity ^0.8.18;

contract MyToken {
    // variable
    string public tokenName = "T-Rex";
    string public tokenAbbrv = "Rex";
    uint256 public totalSupply = 0;

    // mapping variable
    mapping(address => uint256) public balances;

    // mint variable
    function mint(address _address, uint256 _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // burn variable
    function burn(address _address, uint256 _value) public {
        if (balances[_address] >= _value) {
            totalSupply -= _value;
            balances[_address] -= _value;
        }
    }
}