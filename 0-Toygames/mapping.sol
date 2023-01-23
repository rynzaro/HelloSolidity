// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Mapping {
    mapping (address => uint) internal _functionCalls;

    constructor() {
        // Start out with a value of 10 for the fun
        _functionCalls[msg.sender] = 10;
    }

    function functionCalls(address _address) public view returns(uint)  {
        return _functionCalls[_address];
    }

    function functionCall() external {
        _functionCalls[msg.sender]++;
    }

    function deleteEntry() external {
        delete(_functionCalls[msg.sender]);
    }
}
