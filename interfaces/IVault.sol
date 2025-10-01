// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
interface IVault {
    function flashLoan(address r,address[] calldata t,uint256[] calldata a,bytes calldata d) external;
}
