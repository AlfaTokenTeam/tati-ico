pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract TATI is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function TATI(address _owner)  UpgradeableToken(_owner) {
    name = "TATI";
    symbol = "TAT";
    totalSupply = 100000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}