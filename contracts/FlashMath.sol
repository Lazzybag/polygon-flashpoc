// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
library FlashMath {
    function simulateSwapAforB(uint112 rA,uint112 rB,uint aIn) internal pure returns(uint112 nrA,uint112 nrB,uint out){
        uint k = uint(rA)*rB; nrA = rA+uint112(aIn); nrB = uint112(k/nrA); out = rB-nrB;
    }
    function priceDeviationBP(uint rA0,uint rB0,uint rA1,uint rB1) internal pure returns(uint bp){
        uint p0 = (1e18*rA0)/rB0; uint p1 = (1e18*rA1)/rB1;
        bp = (p1>p0)? (1e4*(p1-p0))/p0 : (1e4*(p0-p1))/p0;
    }
}
