pragma solidity ^0.4.17;

import "zeppelin-solidity/contracts/ownership/Ownable.sol";

contract InternalTransfer is Ownable{

  uint256 public balance = 0;

  function InternalTransfer() Ownable() public {
  }

  /**
  * @dev Accept eth to the contract.
  */
  function () public payable {
  	balance += msg.value;
  }

  /**
  * @dev Gets the eth balance of the contract.
  * @return An uint256 representing the amount owned by contract.
  */
  function balance() public view returns (uint256) {
    return balance;
  }
	
  /**
  * @dev transfer eth for a specified address
  * @param _to The address to transfer to.
  * @param _value The amount to be transferred.
  */
  function transfer(address _to, uint256 _value) public onlyOwner() returns (bool) {
    require(_to != address(0));
    require(_value <= balance);

    balance -= _value;
    _to.transfer(_value);
    return true;
  }
}