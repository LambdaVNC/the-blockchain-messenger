// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

contract TheBlockchainMessenger {
    address public owner;
    uint public changeCounter;
    string public theMessage;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner{
        require(owner == msg.sender ,"Only owner!");
        _;
    }

    function setTheMessage(string memory _newMessage) public onlyOwner{
        theMessage = _newMessage;
        changeCounter++;
    }
}