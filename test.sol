// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Test1 {
  constructor() {
  }

  function name() public view returns (uint32) {
    uint32 n = 20;
    return n;
  }
}