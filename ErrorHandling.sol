//SPDX-License-Identifier: MIT

// This is a smart contract that implements the require(), assert() and revert() statements.

pragma solidity ^0.8.13;

contract ErrorHandling {
    uint public personAge;                       // holds the age of the user
    uint public node;                           // holds the number of nodes

    function checkRequire(uint _personAge) public {   //allow user to proceed if the age is above 18
        personAge=_personAge;
        require(personAge>18, "THE PERSON ARE A MINOR.");
       node+=1;
    }

    function checkRevert(uint _personAge) public {   //allow user to proceed if the age is above 18
        personAge=_personAge;
        if (personAge<18) {
            revert("THE PERSON ARE A MINOR.");
        }
        node+=1;
    }    

    function checkAssert() public view {      // number of nodes can't exceed 5
        assert(node<5);
    }

}
