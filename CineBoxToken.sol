
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CineBoxToken is ERC20, Ownable {
    constructor(uint256 initialSupply)
        ERC20("CineBoxToken", "CBT")
        Ownable(msg.sender) 
    {
        _mint(msg.sender, initialSupply * (10 ** decimals()));
    }

    
    function rewardCustomer(address customer, uint256 amount) public onlyOwner {
        _transfer(msg.sender, customer, amount * (10 ** decimals()));
    }
}
