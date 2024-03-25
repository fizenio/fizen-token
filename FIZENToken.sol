//SPDX-License-Identifier:MIT
pragma solidity 0.8.0;
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract FIZENToken is  ERC20, Ownable {
  uint private constant HARD_CAP = 200_000_000e18; // 200M token
  /**
     * @dev Constructor function of FIZEN Token
     * @dev set name, symbol and decimal of token
     * @dev mint totalSupply (cap) to Fizen multiSig wallet
     */
  constructor(address multiSigWallet) ERC20("FIZEN Token", "FIZEN"){
    _mint(multiSigWallet, HARD_CAP);
  }
}
