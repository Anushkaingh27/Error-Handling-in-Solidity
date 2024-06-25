// SPDX-License-Identifier: MIT

//This Solidity contract ErrorHandling, is designed to demonstrate various error handling mechanisms in the Ethereum blockchain. The contract includes three key functions that showcase different ways
to handle errors: require(), assert() and revert().

pragma solidity ^0.8.13;

contract ErrorHandling {
    uint public balance;                       
    uint public transactionCount;              

    function checkRequire(uint _amount) public {  
        balance = _amount;
        require(balance > 100, "Amount must be greater than 100.");
        transactionCount+=1;
    }

    function checkRevert(uint _amount) public {  
        balance = _amount;
        if (balance <= 100) {
            revert("Amount must be greater than 100.");
        }
        transactionCount+=1;
}

    function checkAssert() public view {  
        assert(transactionCount < 10);
    }
}
