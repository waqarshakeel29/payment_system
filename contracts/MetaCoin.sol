// SPDX-License-Identifier: MIT
pragma solidity >=0.4.25 <0.7.0;

import "./ConvertLib.sol";

// This is just a simple example of a coin-like contract.
// It is not standards compatible and cannot be expected to talk to other
// coin/token contracts. If you want to create a standards-compliant
// token, see: https://github.com/ConsenSys/Tokens. Cheers!

contract MetaCoin {
	uint storedData;

	constructor() public {
		storedData = 100000;
	}

	function sendCoin(address receiver, uint amount) public returns(bool sufficient) {
		storedData = storedData - amount;
		return true;
	}

	function getBalance(address addr) public view returns(uint) {
		return storedData;
	}
}
